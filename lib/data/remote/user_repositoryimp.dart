import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:artist_replugged/core/widget/widgets.dart';
import 'package:artist_replugged/data/local/shared_pref.dart';
import 'package:artist_replugged/domain/models/arpQuickModel/arp_browseModel.dart';
import 'package:artist_replugged/domain/models/commentModel/commment_model.dart';
import 'package:artist_replugged/domain/models/morelikeThisModel/morelikethis_model.dart';
import 'package:artist_replugged/domain/models/mylistModel/mylist_model.dart';
import 'package:artist_replugged/domain/models/quickClipModel/quick_clip_models.dart';
import 'package:artist_replugged/domain/models/searchModel/search_model.dart';
import 'package:artist_replugged/domain/models/selectedDocumentaryModel/selected_documentary_model.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/domain/usecases/arp_browserUsecase.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/presentation/arp_browser_screen.dart';
import 'package:artist_replugged/presentation/arpSelection/domain/usecase/documentary_likedislike_usecase.dart';
import 'package:artist_replugged/presentation/arpSelection/domain/usecase/info_usecase.dart';
import 'package:artist_replugged/presentation/forgot/domain/usecases/forgot_email.dart';
import 'package:artist_replugged/presentation/setting/account/domain/usecases/profile_usecase.dart';
import 'package:artist_replugged/presentation/setting/notification/domain/usecase/notification_usecase.dart';
import 'package:artist_replugged/presentation/setting/support/domain/useases/support_usecase.dart';
import 'package:dartz/dartz.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:artist_replugged/core/constant/constant.dart';
import 'package:artist_replugged/core/failure/failure.dart';
import 'package:artist_replugged/domain/user_repository.dart';
import 'package:artist_replugged/presentation/register/domain/use_cases.dart';
import 'package:kiwi/kiwi.dart';
import '../../domain/models/search_model.dart';
import '../../presentation/arpQuickClipsScreen/entity/entity.dart';
import '../../presentation/search/presentation/search_filter.dart';
import 'firebase/fcm_token.dart';

class UserRepositoryImp extends UserRepository {
  final SharedPrefHelper sharedPrefHelper;

  UserRepositoryImp(this.sharedPrefHelper);
  final SharedPrefHelper _prefHelper =
      KiwiContainer().resolve<SharedPrefHelper>();

  @override
  Future<Either<Failure, Unit>> emailSignup(EmailAuthParams params) async {
    print(params.cPassword.toString());
    Map<String, dynamic> map = <String, dynamic>{};
    map[ArtistConstant.name] = '';
    map[ArtistConstant.email] = params.email.toString();

    map[ArtistConstant.password] = params.password.toString();
    map[ArtistConstant.cPassword] = params.cPassword.toString();
    map[ArtistConstant.deviceType] = ArtistConstant.deviceAuth;
    map[ArtistConstant.deviceToken] =
        prefHelper.getStringByKey(ArtistConstant.fcmToken, '');
    print(map);
    try {
      final response = await http
          .post(ArtistConstant.registerUrl, body: map)
          .timeout(timeOutDurationException);
      print(response.body);
      Map<dynamic, dynamic> res = jsonDecode(response.body);

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);
      print(ArtistConstant.registerUrl);
      if (_prefHelper.getReturnCode() == 1) {
        await _prefHelper.saveString('token', res['data']['token']);
        await _prefHelper.saveString(
            ArtistConstant.email, res['data']['email'] ?? '');
        await _prefHelper.saveString(
            ArtistConstant.name, res['data']['name'] ?? '');
        await _prefHelper.saveString(
            ArtistConstant.phone, res['data']['phone'] ?? '');
        return const Right(unit);
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
    return const Left(Failure.emailAlreayInUsed());
  }

  @override
  Future<Either<Failure, Unit>> emailLogin(EmailAuthParams params) async {
    print(params.cPassword.toString());
    Map<String, dynamic> map = <String, dynamic>{};
    map[ArtistConstant.name] = '';
    map[ArtistConstant.email] = params.email.toString();
    map[ArtistConstant.password] = params.password.toString();
    map[ArtistConstant.cPassword] = '';
    map[ArtistConstant.deviceType] = ArtistConstant.deviceAuth.toString();
    map[ArtistConstant.deviceToken] =
        prefHelper.getStringByKey(ArtistConstant.fcmToken, '').toString();
    log(map.toString());

    try {
      final response = await http
          .post(ArtistConstant.loginUrl, body: map)
          .timeout(timeOutDurationException);
      log(response.body);
      Map<dynamic, dynamic> res = jsonDecode(response.body);

      await _prefHelper.saveString('auth', res['returnMessage']);
      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        await _prefHelper.saveString('token', res['data']['token']);
        await _prefHelper.saveString(
            ArtistConstant.email, res['data']['email'] ?? '');
        await _prefHelper.saveString(
            ArtistConstant.name, res['data']['name'] ?? '');
        await _prefHelper.saveString(
            ArtistConstant.phone, res['data']['phone'] ?? '');
        return const Right(unit);
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'invalid password') {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      } else {
        return const Left(Failure.emailAlreayInUsed());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> forgotEmail(String email) async {
    try {
      final response = await http.post(ArtistConstant.resetOtpUrl, body: {
        ArtistConstant.email: email.toString()
      }).timeout(timeOutDurationException);
      print(response.body);
      Map<dynamic, dynamic> res = jsonDecode(response.body);

      _prefHelper.saveString('auth', res['returnMessage'] ?? '').toString();

      if (_prefHelper.getStringByKey('auth', '').toString() ==
          'User Not Found.') {
        print('=>>>>>>');
        return const Left(Failure.invalidEmailAndPasswordCombination());
      } else {
        await _prefHelper.saveInt('otp', res['data']['otp'] ?? 0);
        return const Right(unit);
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> setNewPassword(SetPasswordParams params) async {
    try {
      final response = await http.post(ArtistConstant.resetPasswordUrl, body: {
        ArtistConstant.password: params.password.toString(),
        'otp': params.otp
      }).timeout(timeOutDurationException);
      print(response.body);
      Map<dynamic, dynamic> res = jsonDecode(response.body);

      await _prefHelper.saveString('auth', res['returnMessage']);
      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        await _prefHelper.saveInt('otp', res['data']['otp'] ?? 0);
        return const Right(unit);
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> profileUpdate(ProfileAuthParams params) async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}'
      };
      print(params.email);
      final response = await http
          .post(
            ArtistConstant.updateProfileUrl,
            body: {
              ArtistConstant.password: params.password,
              ArtistConstant.email: params.email.isEmpty
                  ? prefHelper.getStringByKey(ArtistConstant.email, '')
                  : params.email,
              ArtistConstant.name: params.name.isEmpty
                  ? prefHelper.getStringByKey(ArtistConstant.name, '')
                  : params.name,
              'phone': params.phone.isEmpty
                  ? prefHelper.getStringByKey(ArtistConstant.phone, '')
                  : params.phone,
              'new_password': params.cPassword,
            },
            headers: headers,
          )
          .timeout(timeOutDurationException);
      print(response.body);
      Map<dynamic, dynamic> res = jsonDecode(response.body);

      _prefHelper.saveString('auth', res['data'].toString());

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);
      _prefHelper.saveString(
        'status',
        res['returnMessage'] ?? '',
      );

      if (_prefHelper.getReturnCode() == 1) {
        return const Right(unit);
      } else if (_prefHelper.getStringByKey('status', '').toString() ==
          'The email field is required.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> notification(NotificationParams params) async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}'
      };
      print('true${params.episode}');
      print(params.clip);
      final response = await http
          .post(
            ArtistConstant.notificationUrl,
            body: {
              ArtistConstant.newEpisode: params.episode.toString(),
              ArtistConstant.clip: params.clip.toString(),
            },
            headers: headers,
          )
          .timeout(timeOutDurationException);
      print(response.body);
      Map<dynamic, dynamic> res = jsonDecode(response.body);

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        await _prefHelper.saveString(
            ArtistConstant.quickClips, res['data']['quick_clips'] ?? '');
        await _prefHelper.saveString(
            ArtistConstant.newEpisodes, res['data']['new_episodes'] ?? '');
        return const Right(unit);
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
    return const Left(Failure.serverError());
  }

  @override
  Future<Either<Failure, Unit>> support(SupportParams params) async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}'
      };
      final response = await http
          .post(
            ArtistConstant.supportUrl,
            body: {
              ArtistConstant.name: params.name,
              ArtistConstant.email: params.email,
              ArtistConstant.message: params.message,
              ArtistConstant.reason: params.reasion,
            },
            headers: headers,
          )
          .timeout(timeOutDurationException);
      print(response.body);
      Map<dynamic, dynamic> res = jsonDecode(response.body);
      print(res);
      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        return const Right(unit);
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, ArpBrowserModel>> arpBrowser(String texts) async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}'
      };
      if (texts == 'All') {
        texts = '';
        log(texts);
      }
      if (text.toString() == 'All') {
        text = '';
        log(text);
      }
      //  log('${ArtistConstant.arpBrowserUrl}${text.isEmpty ? texts : text}');
      log(texts);
      final response = await http.get(
        // Uri.parse(
        //   'https://dev.artistreplugged.com/api/documentary-type?keyword=&type='),
        Uri.parse(
            '${ArtistConstant.baseUrl}documentary?page=${pageCountValueDocumentary}&type=${text.isEmpty ? texts : text}'),
        headers: headers,
      );

      Map<String, dynamic> res = jsonDecode(response.body);
      print(res);
      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        for (int i = 0; i <= res['data']["listing"].length - 1; i++) {
          if (names!.contains(res['data']["listing"][i]['id'])) {
            log('enter');
            names!.removeAt(i);
          }
        }

        names!.addAll(List<Listing>.from(
            res['data']["listing"].map((x) => Listing.fromJson(x))));
        log('names!.length.toString() ${names!.length.toString()}');

        return Right(ArpBrowserModel.fromJson(res));
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } catch (e) {
      log(e.toString());
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, QuickClipsModel>> quick() async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}'
      };
      final response = await http.get(
        Uri.parse('${ArtistConstant.baseUrl}clips?page=${pageCountValueClips}'),
        headers: headers,
      );
      print(response.body);
      var res = jsonDecode(response.body);

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        for (int i = 0; i <= res['data']["listing"].length - 1; i++) {
          if (storeQuickClipData.contains(res['data']["listing"][i]['id'])) {
            log('enter');
            names!.removeAt(i);
          }
        }

        storeQuickClipData.addAll(List<quickListing>.from(
            res['data']["listing"].map((x) => quickListing.fromJson(x))));
        log('names!.length.toString() ${names!.length.toString()}');

        return Right(QuickClipsModel.fromJson(res));
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

//* documentary add to list api
  ///*
  @override
  Future<Either<Failure, Unit>> addToList(AddToListParams params) async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}'
      };
      final response = await http
          .post(
            ArtistConstant.documentaryAddToListUrl,
            body: {
              ArtistConstant.type: params.type,
              ArtistConstant.documentryId: params.documentId,
            },
            headers: headers,
          )
          .timeout(timeOutDurationException);
      print(response.body);

      Map<dynamic, dynamic> res = jsonDecode(response.body);

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        _prefHelper.saveString('documentaryStatus', res['returnMessage']);
        return const Right(unit);
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, MyListModel>> myListUsecase() async {
    log(_prefHelper.getStringByKey('token', ''));
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}'
      };
      final response = await http
          .get(
            Uri.parse(
                '${ArtistConstant.baseUrl}documentary-wishlist?page=${pageCountValueList}'),
            headers: headers,
          )
          .timeout(timeOutDurationException);

      print(response.body);

      var res = jsonDecode(response.body);

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        for (int i = 0; i <= res['data']["listing"].length - 1; i++) {
          log(res['data']["listing"][i]['id'].toString());
          if (getPaginationData.contains(res['data']["listing"][i]['id'])) {
            log('enter');
            await getPaginationData.removeAt(i);
          } else {
            getPaginationData.addAll(List<myListing>.from(
                res['data']["listing"].map((x) => myListing.fromJson(x))));
            log('names!.length.toString() ${names!.length.toString()}');
            return Right(MyListModel.fromJson(res));
          }
        }

        return Right(MyListModel.fromJson(res));
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> quickComment(
      LikeCommentParams likeCommentParams) async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}'
      };
      print(likeCommentParams.id);
      print(likeCommentParams.text);
      final response = await http
          .post(ArtistConstant.clipCommentUrl, headers: headers, body: {
        'clip_id': likeCommentParams.id.toString(),
        'comment': likeCommentParams.text.toString()
      }).timeout(timeOutDurationException);
      print(response.body);

      var res = jsonDecode(response.body);

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        return const Right(unit);
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> quickLike(
      LikeCommentParams likeCommentParams) async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}'
      };
      print('id value=>${likeCommentParams.id}');
      print('id value=>${likeCommentParams.text}');
      final response = await http.post(ArtistConstant.clipLikeUrl,
          headers: headers,
          body: <String, dynamic>{
            'clip_id': likeCommentParams.id.toString(),
            'type': likeCommentParams.text
          }).timeout(timeOutDurationException);
      print(response.body);

      var res = jsonDecode(response.body);

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        await _prefHelper.saveString(
            ArtistConstant.likeDislikeStatus, res['returnMessage'] ?? '');
        await _prefHelper.saveInt(
            ArtistConstant.likeCount, res['data']['likes'] ?? 0);
        await _prefHelper.saveInt(
            ArtistConstant.viewCount, res['data']['views'] ?? 0);
        return const Right(unit);
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> quickView(
      LikeCommentParams likeCommentParams) async {
    try {
      print('id value=>${likeCommentParams.id}');
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}',
      };

      final response = await http.post(ArtistConstant.clipViewUrl,
          headers: headers,
          body: <String, dynamic>{
            'id': likeCommentParams.id.toString(),
            'type': 'clip'
          }).timeout(timeOutDurationException);
      print(response.body);

      var res = jsonDecode(response.body);
      print(res);
      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        return const Right(unit);
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> documentaryLikeDislike(
      DocumentaryParams documentaryParams) async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}',
      };

      final response = await http.post(ArtistConstant.docuentaryViewurl,
          headers: headers,
          body: <String, dynamic>{
            'documentary_id': documentaryParams.id.toString(),
            'type': documentaryParams.type
          }).timeout(timeOutDurationException);
      print(response.body);

      var res = jsonDecode(response.body);

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        await _prefHelper.saveString(
            'documentaryStatus', res['returnMessage'] ?? '');
        return const Right(unit);
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, ArpViewModel>> arpView(dynamic ids) async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}',
      };
      log('${ArtistConstant.documentaryById}/${ids.toString()}');
      final response = await http
          .get(
            Uri.parse('${ArtistConstant.documentaryById}/${ids.toString()}'),
            headers: headers,
          )
          .timeout(timeOutDurationException);
      print(response.body);

      var res = jsonDecode(response.body);

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        return Right(ArpViewModel.fromJson(res));
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Morelikethismodel>> morelikeThisUsecase(
      String text) async {
    print(text);
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}',
      };

      final response = await http
          .get(
            Uri.parse(
                '${ArtistConstant.moreLikeThisUrl}$text&parent id=${prefHelper.getStringByKey('morelikethis', '')}?pag'),
            headers: headers,
          )
          .timeout(timeOutDurationException);
      print(response.body);

      var res = jsonDecode(response.body);

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        await _prefHelper.saveString(
            'documentaryStatus', res['returnMessage'] ?? '');
        // for (int i = 0; i <= res['data']["listing"].length - 1; i++) {
        //   log(res['data']["listing"][i]['id'].toString());
        //   if (storeMoreLikeThisData.contains(res['data']["listing"][i]['id'])) {
        //     log('enter');
        //     await storeMoreLikeThisData.removeAt(i);
        //   }
        // }
        // storeMoreLikeThisData.addAll(List<MorelikethismodelListing>.from(
        //     res['data']["listing"]
        //         .map((x) => MorelikethismodelListing.fromJson(x))));
        // log('names!.length.toString() ${names!.length.toString()}');

        return Right(Morelikethismodel.fromJson(res));
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, CommentModel>> getCommentUseCases(int id) async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}',
      };
      print(id);
      final response = await http
          .get(
            Uri.parse('${ArtistConstant.postCommentUrl}${id.toString()}'),
            headers: headers,
          )
          .timeout(timeOutDurationException);
      print(response.body);

      var res = jsonDecode(response.body);

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        await _prefHelper.saveString(
            'documentaryStatus', res['returnMessage'] ?? '');
        return Right(CommentModel.fromJson(res));
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, SearchModel>> search() async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}',
      };
      print(id);
      final response = await http
          .get(
            ArtistConstant.getSearchList,
            headers: headers,
          )
          .timeout(timeOutDurationException);
      print(response.body);

      var res = jsonDecode(response.body);

      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        searchItemss = res['data']['genre'].split(',');
        searchItemss.insert(0, 'All');

        log(searchItemss.toString());
        await _prefHelper.saveString(
            'documentaryStatus', res['returnMessage'] ?? '');
        return Right(SearchModel.fromJson(res));
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } on TimeoutException {
      return const Left(Failure.timeout());
    } catch (e) {
      print(e);
      return const Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, ArpSearchModel>> arpViewSearch(
      SearchParams searchParams) async {
    try {
      Map<String, String> headers = <String, String>{
        'authorization': 'Bearer ${_prefHelper.getStringByKey('token', '')}'
      };
      log('name=>>>>>>>>${searchParams.text1.toString().toLowerCase()}');

      final response = await http.get(
        Uri.parse(
            'https://dev.artistreplugged.com/api/documentary-type?keyword=${searchParams.text1.toString().toLowerCase()}&type=${searchParams.text1.toString().toLowerCase()}'),
        headers: headers,
      );

      Map<String, dynamic> res = jsonDecode(response.body);
      print(res);
      _prefHelper.saveReturnCode(res['returnCode'] ?? 0);

      if (_prefHelper.getReturnCode() == 1) {
        return Right(ArpSearchModel.fromJson(res));
      } else if (_prefHelper.getStringByKey('auth', '').toString() ==
          'The email has already been taken.') {
        return const Left(Failure.emailAlreayInUsed());
      } else {
        return const Left(Failure.invalidEmailAndPasswordCombination());
      }
    } on SocketException {
      return const Left(Failure.connectionFailure());
    } catch (e) {
      log(e.toString());
      return const Left(Failure.serverError());
    }
  }
}
