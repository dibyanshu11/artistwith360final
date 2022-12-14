import 'package:artist_replugged/data/local/shared_pref.dart';
import 'package:artist_replugged/data/remote/user_repositoryimp.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/domain/bloc/arpbrowser_bloc.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/domain/usecases/arp_browserUsecase.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/domain/bloc/clips_bloc.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/domain/usecases/clip_view_usecase.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/domain/usecases/quick_usecase.dart';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/domain/usecases/video_comment_usecase.dart';
import 'package:artist_replugged/presentation/arpSelection/domain/usecase/info_usecase.dart';
import 'package:artist_replugged/presentation/arpSelection/domain/usecase/morelikethis_usecase.dart';
import 'package:artist_replugged/presentation/forgot/domain/bloc/forgot_bloc.dart';
import 'package:artist_replugged/presentation/forgot/domain/usecases/forgot_email.dart';
import 'package:artist_replugged/presentation/login/domain/login_usecase.dart';
import 'package:artist_replugged/presentation/login/presentation/bloc/login_bloc.dart';
import 'package:artist_replugged/presentation/register/domain/use_cases.dart';
import 'package:artist_replugged/presentation/search/domain/search_usecase.dart';
import 'package:artist_replugged/presentation/setting/account/domain/bloc/profile_bloc.dart';
import 'package:artist_replugged/presentation/setting/account/domain/usecases/profile_usecase.dart';
import 'package:artist_replugged/presentation/setting/myList/domain/bloc/mylist_bloc.dart';
import 'package:artist_replugged/presentation/setting/myList/domain/usecases/usecase.dart';
import 'package:artist_replugged/presentation/setting/notification/domain/bloc/notification_bloc.dart';
import 'package:artist_replugged/presentation/setting/notification/domain/usecase/notification_usecase.dart';
import 'package:artist_replugged/presentation/setting/support/domain/bloc/support_bloc.dart';
import 'package:artist_replugged/presentation/setting/support/domain/useases/support_usecase.dart';
import 'package:kiwi/kiwi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/user_repository.dart';
import '../../presentation/arpQuickClipsScreen/domain/usecases/getComments_usecases.dart';
import '../../presentation/arpQuickClipsScreen/domain/usecases/video_like_usecase.dart';
import '../../presentation/arpSelection/domain/bloc/arp_selection_bloc.dart';
import '../../presentation/arpSelection/domain/usecase/documentary_likedislike_usecase.dart';
import '../../presentation/register/presentation/register/register_bloc.dart';

Future<void> registerDependencyInjection() async {
  var container = KiwiContainer();

  _registerRepositories(container);
  _registerUseCases(container);

  _registerBloc(container);
  await _localDataSource(container);
  await _registerDataSources(container);
}

void _registerBloc(KiwiContainer container) {
  container.registerFactory((c) => RegisterBloc(c.resolve()));
  container.registerFactory((c) => LoginBloc(c.resolve()));

  container.registerFactory(
      (container) => ForgotBloc(container.resolve(), container.resolve()));
  container.registerFactory((container) => ProfileBloc(
        container.resolve(),
      ));
  container.registerFactory((container) => NotificationBloc(
        container.resolve(),
      ));
  container.registerFactory((container) => SupportBloc(
        container.resolve(),
      ));
  container.registerFactory((container) => ArpbrowserBloc(
      container.resolve(),
      container.resolve(),
      container.resolve(),
      container.resolve(),
      container.resolve()));
  container.registerFactory((container) => ClipsBloc(container.resolve(),
      container.resolve(), container.resolve(), container.resolve()));
  container.registerFactory((container) => MylistBloc(
        container.resolve(),
      ));
  container.registerFactory((container) =>
      ArpSelectionBloc(container.resolve(), container.resolve()));
}

void _registerUseCases(KiwiContainer container) {
  container.registerFactory((c) => EmailSignup(c.resolve()));
  container.registerFactory((c) => MyListUsecase(c.resolve()));
  container.registerFactory((c) => AddToList(c.resolve()));
  container.registerFactory((c) => EmailLogin(c.resolve()));
  container.registerFactory((c) => ForgotEmail(c.resolve()));
  container.registerFactory((c) => SetNewPassword(c.resolve()));
  container.registerFactory((c) => ProfileUpdate(c.resolve()));
  container.registerFactory((c) => ArpViewSearch(c.resolve()));
  container.registerFactory((c) => Notification(c.resolve()));
  container.registerFactory((c) => Support(c.resolve()));
  container.registerFactory((c) => ArpBrowserUseCase(c.resolve()));
  container.registerFactory((c) => Quick(c.resolve()));
  container.registerFactory((c) => QuickLike(c.resolve()));
  container.registerFactory((c) => QuickComment(c.resolve()));
  container.registerFactory((c) => QuickView(c.resolve()));
  container.registerFactory((c) => DocumentaryLikeDislike(c.resolve()));
  container.registerFactory((c) => ArpView(c.resolve()));
  container.registerFactory((c) => GetCommentUseCases(c.resolve()));
  container.registerFactory((c) => MorelikeThisUsecase(c.resolve()));
  container.registerFactory((c) => Search(c.resolve()));
}

_localDataSource(KiwiContainer container) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  container.registerFactory((KiwiContainer container) => sharedPreferences);
}

_registerRepositories(KiwiContainer container) {
  container
      .registerFactory<UserRepository>((c) => UserRepositoryImp(c.resolve()));
}

_registerDataSources(KiwiContainer container) {
  container.registerFactory<SharedPrefHelper>(
      (KiwiContainer c) => SharedPrefHelperImp(sharedPreferences: c.resolve()));
}
