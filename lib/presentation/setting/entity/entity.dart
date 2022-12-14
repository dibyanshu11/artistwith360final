import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:artist_replugged/presentation/setting/account/presentation/profile_screen.dart';
import 'package:artist_replugged/presentation/setting/myList/mylist_screen.dart';
import 'package:artist_replugged/presentation/setting/notification/presentation/notifiation.dart';
import 'package:artist_replugged/presentation/setting/support/support.dart';
import 'package:flutter/material.dart';

/// this function ready to perform Navigation between
/// different pages with help of index depends on userInterations
///
Padding settingNavigator(String text, image, int index, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: InkWell(
        onTap: () {
          switch (index) {
            case 0:
              Navigator.of(context).push(MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => const ProfileScreen()));
              break;
            case 1:
              Navigator.of(context).push(MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => const NotificationScreen()));
              break;
            case 2:
              Navigator.of(context).push(MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => const MyListScreen()));
              break;
            case 3:
              Navigator.of(context).push(MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (_) => const SupportScreen()));
              break;
            default:
          }
        },
        child: Material(
          borderRadius: BorderRadius.circular(20),
          elevation: 5,
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 80,
            decoration: BoxDecoration(
                color: ArtistColor.textFieldBackgroundColor,
                borderRadius: BorderRadius.circular(20)),
            child: Row(children: [
              Image.asset(
                image,
                height: 20,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Text(text, style: ArtistTextStyle.settingTextStyle)),
              IconButton(
                onPressed: () {
                  switch (index) {
                    case 0:
                      Navigator.of(context).push(MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (_) => const ProfileScreen()));
                      break;
                    case 1:
                      Navigator.of(context).push(MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (_) => const NotificationScreen()));
                      break;
                    case 2:
                      Navigator.of(context).push(MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (_) => const MyListScreen()));
                      break;
                    case 3:
                      Navigator.of(context).push(MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (_) => const SupportScreen()));
                      break;
                    default:
                  }
                },
                icon: const Icon(Icons.arrow_forward_ios,
                    size: 20, color: ArtistColor.backArrow),
              ),
            ]),
          ),
        )),
  );
}
