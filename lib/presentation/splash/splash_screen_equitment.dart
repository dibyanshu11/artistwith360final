import 'package:artist_replugged/data/local/shared_pref.dart';
import 'package:artist_replugged/domain/user_repository.dart';
import 'package:artist_replugged/presentation/ArpBrowserScreen/presentation/arp_browser_screen.dart';
import 'package:artist_replugged/presentation/splash/verify_auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kiwi/kiwi.dart';

UserRepository userRepositoryImp = KiwiContainer().resolve<UserRepository>();
useMyHook() {
  return use(const SplashScreenEquitment());
}

class SplashScreenEquitment extends Hook<void> {
  const SplashScreenEquitment();
  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenEquitmentState createState() => _SplashScreenEquitmentState();
}

class _SplashScreenEquitmentState
    extends HookState<void, SplashScreenEquitment> {
  SharedPrefHelper prefHelper = KiwiContainer().resolve<SharedPrefHelper>();
  @override
  void initHook() {
    userRepositoryImp.search();

    navigateToNextSreen();
    super.initHook();
  }

  navigateToNextSreen() async {
    await Future<void>.delayed(const Duration(seconds: 3), () {
      print(prefHelper.getStringByKey('token', ''));
      if (prefHelper.getStringByKey('token', '').toString().isEmpty ||
          prefHelper.getStringByKey('token', '') == null) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute<VerifyAuthScreen>(
                builder: (BuildContext context) => const VerifyAuthScreen()),
            <Route>(Route route) => false);
      } else {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (BuildContext context) => const AppBrowserScreen(),
              // settings: RouteSettings(
              //   name: 'AppBrowserScreen',
              // ),
            ),
            <Route>(Route route) => false);
      }
    });
  }

  @override
  void build(BuildContext context) {}
}
