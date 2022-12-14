import 'package:artist_replugged/domain/models/arpQuickModel/arp_browseModel.dart';
import 'package:artist_replugged/domain/models/commentModel/commment_model.dart';
import 'package:artist_replugged/domain/models/morelikeThisModel/morelikethis_model.dart';
import 'package:artist_replugged/domain/models/mylistModel/mylist_model.dart';
import 'package:artist_replugged/domain/models/searchModel/search_model.dart';
import 'package:artist_replugged/domain/models/search_model.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/domain/usecases/arp_browserUsecase.dart';
import 'package:artist_replugged/presentation/arpSelection/domain/usecase/documentary_likedislike_usecase.dart';
import 'package:artist_replugged/presentation/arpSelection/domain/usecase/info_usecase.dart';
import 'package:artist_replugged/presentation/register/domain/use_cases.dart';
import 'package:artist_replugged/presentation/setting/account/domain/usecases/profile_usecase.dart';
import 'package:artist_replugged/presentation/setting/notification/domain/usecase/notification_usecase.dart';
import 'package:artist_replugged/presentation/setting/support/domain/useases/support_usecase.dart';
import 'package:dartz/dartz.dart';
import '../core/failure/failure.dart';
import '../presentation/arpQuickClipsScreen/entity/entity.dart';
import '../presentation/forgot/domain/usecases/forgot_email.dart';
import 'models/quickClipModel/quick_clip_models.dart';
import 'models/selectedDocumentaryModel/selected_documentary_model.dart';

abstract class UserRepository<T> {
  Future<Either<Failure, Unit>> emailSignup(EmailAuthParams params);
  Future<Either<Failure, Unit>> emailLogin(EmailAuthParams params);
  Future<Either<Failure, Unit>> forgotEmail(String email);
  Future<Either<Failure, Unit>> setNewPassword(SetPasswordParams params);
  Future<Either<Failure, Unit>> profileUpdate(ProfileAuthParams params);
  Future<Either<Failure, Unit>> notification(NotificationParams params);
  Future<Either<Failure, Unit>> support(SupportParams params);
  Future<Either<Failure, ArpBrowserModel>> arpBrowser(String text);
  Future<Either<Failure, Unit>> addToList(AddToListParams params);
  Future<Either<Failure, QuickClipsModel>> quick();
  Future<Either<Failure, MyListModel>> myListUsecase();
  Future<Either<Failure, ArpViewModel>> arpView(dynamic ids);
  Future<Either<Failure, ArpSearchModel>> arpViewSearch(
      SearchParams searchParams);
  Future<Either<Failure, CommentModel>> getCommentUseCases(int id);
  Future<Either<Failure, Unit>> quickView(LikeCommentParams likeCommentParams);

  Future<Either<Failure, Unit>> quickComment(
      LikeCommentParams likeCommentParams);
  Future<Either<Failure, Unit>> quickLike(LikeCommentParams likeCommentParams);

  Future<Either<Failure, Unit>> documentaryLikeDislike(
      DocumentaryParams documentaryParams);

  Future<Either<Failure, Morelikethismodel>> morelikeThisUsecase(String text);

  Future<Either<Failure, SearchModel>> search();
}
