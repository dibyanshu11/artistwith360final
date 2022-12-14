import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/widget/buttons.dart';
import 'package:artist_replugged/core/widget/textfield.dart';
import 'package:artist_replugged/presentation/login/presentation/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../core/theme/text_style.dart';

class ChangePassword extends HookWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ArtistColor.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
            child: Image.asset(
              'assets/images/artist replugged logo wo mf final.png',
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Verification Code',
              style: ArtistTextStyle.headerTextStyle,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'You must have recieved a verification code on your given email address. please enter code to veify your account. ',
            style: ArtistTextStyle.smallHeadingTextStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          const ArtistTextFormField(text: 'Otp'),
          const SizedBox(
            height: 40,
          ),
          const ArtistThemeButton(text: 'Submit'),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Did\'t get the code? ',
                style: ArtistTextStyle.smallHeadingTextStyle,
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const LoginScreen()));
                  },
                  child:
                      Text('Resend', style: ArtistTextStyle.tearmAndCandition)),
            ],
          )
        ]),
      ),
    );
  }
}

extension StringShortCuts on String {
  String get capitalizeFirstLetter {
    final firstLetter = this[0];
    final capitalizeFirstLetter = firstLetter.toUpperCase();
    final capitlizedName = replaceAll(firstLetter, capitalizeFirstLetter);
    return capitlizedName;
  }
}
