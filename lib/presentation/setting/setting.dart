import 'package:artist_replugged/core/constant/constant.dart';
import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/data/local/shared_pref.dart';
import 'package:artist_replugged/presentation/splash/verify_auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kiwi/kiwi.dart';
import '../../core/widget/dialog_boxes.dart';
import 'entity/entity.dart';

class ArpSettingScreen extends HookWidget {
  const ArpSettingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SharedPrefHelper prefHelper = KiwiContainer().resolve<SharedPrefHelper>();
    return Scaffold(
      backgroundColor: ArtistColor.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: [
            IconButton(
                alignment: Alignment.centerLeft,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: ArtistColor.backArrow,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Settings',
                style: ArtistTextStyle.headerTextStyle,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            settingNavigator('Account'.toUpperCase(),
                'assets/images/Shape1.png', 0, context),
            settingNavigator('Notifications'.toUpperCase(),
                'assets/images/Path.png', 1, context),
            settingNavigator('My List'.toUpperCase(),
                'assets/images/Shape3.png', 2, context),
            settingNavigator('Support'.toUpperCase(),
                'assets/images/Settings.png', 3, context),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () async {
                prefHelper.removeByKey(ArtistConstant.email);
                showDeviceDialogs(context, 'Log Out', 'Are you want to logout?',
                    'Cancel', 'Log Out', () {
                  prefHelper.removeByKey(
                    'token',
                  );
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const VerifyAuthScreen()));
                });
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset(
                      'assets/images/Exit-Line.png',
                      height: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'logout'.toUpperCase(),
                    style: ArtistTextStyle.settingTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
