import 'dart:io';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/presentation/arp_quick_clips_screen.dart';
import 'package:artist_replugged/presentation/search/presentation/search_filter.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../presentation/ArpBrowserScreen/presentation/arp_browser_screen.dart';
import '../../presentation/setting/setting.dart';
import '../theme/colors.dart';
import '../theme/text_style.dart';

List route = [0];
showDialoges(BuildContext context, String text) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Platform.isAndroid
              ? AlertDialog(actions: <Widget>[
                  Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20),
                                  child: Text(text),
                                ),
                                Divider(
                                  color: Colors.grey[360],
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'ok',
                                    ))
                              ],
                            )),
                      ))
                ])
              : CupertinoAlertDialog(
                  content: Text(text),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      isDefaultAction: true,
                      child: const Text('Ok'),
                    ),
                  ],
                ));
    },
  );
}

showCrediantialDialogs(BuildContext context, String text, String text1,
    GestureTapCallback? onTap, String text3, GestureTapCallback? onPressed) {
  return showDialog(
    useRootNavigator: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0.0,
                        right: 0,
                      ),
                      child: Text(
                        text,
                        style: ArtistTextStyle.headerTextStyle,
                        textScaleFactor: 0.6,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      text1,
                      style: ArtistTextStyle.smallHeadingTextStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: onTap,
                        child: Text(text3,
                            style: ArtistTextStyle.tearmAndCandition),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: onPressed,
                        child: Text('Try again'.toString(),
                            style: ArtistTextStyle.tearmAndCandition),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )),
              )),
        ),
      ]);
    },
  );
}

/// bottom navigation bar
///
buttonbar(currentIndex, BuildContext context, {bool? status}) {
  return BottomNavigationBar(
    elevation: 35,
    backgroundColor: Colors.transparent,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    currentIndex: currentIndex,
    onTap: (index) async {
      //  currentIndex = index;
      if (currentIndex != index) {
        status = false;
      }

      /// this switch allow to user navigate different pages
      ///
      switch (index) {
        case 0:
          // if (route0 == 1) {
          //   Navigator.of(context).popUntil((route) {
          //     return route.settings.name == 'AppBrowserScreen';
          //   });
          // } else {

          Navigator.of(context).push(MaterialPageRoute(
              fullscreenDialog: true, builder: (_) => AppBrowserScreen()));
          // }
          break;
        case 1:
          if (status == false) {
            ;

            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (_) => const ArpQuickClipsScreen(),
                  settings: RouteSettings(name: 'ArpQuickClipsScreen'),
                  fullscreenDialog: true),
            );
          }

          break;
        case 2:
          if (status == false) {
            Navigator.of(context).push(MaterialPageRoute(
                fullscreenDialog: true,
                // settings: RouteSettings(
                //   name: 'SearchScreen',
                // ),
                builder: (_) => const SearchScreen()));
          }
          //   }
          break;

        case 3:
          if (status == false) {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const ArpSettingScreen()));
          }
          break;

        default:
      }
    },
    items: [
      BottomNavigationBarItem(
          icon: Image.asset('assets/images/Home-Line.png',
              height: 30,
              color: currentIndex == 0
                  ? ArtistColor.buttomBarColor
                  : Colors.white),
          label: ''),
      BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/shapes.png',
            height: 60,
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 40,
            color:
                currentIndex == 2 ? ArtistColor.buttomBarColor : Colors.white,
          ),
          label: ''),
      BottomNavigationBarItem(
          backgroundColor: Colors.red,
          icon: Image.asset(
            'assets/images/setting.png',
            height: 30,
            color:
                currentIndex == 3 ? ArtistColor.buttomBarColor : Colors.white,
          ),
          label: '')
    ],
  );
}

///Now this getter ready for the Manage when state is lazySingleTone/LoadingTime
///
indiator(Color color) {
  return Center(
    child: CupertinoActivityIndicator(
      color: color,
      radius: 15,
    ),
  );
}

showDeviceDialogs(BuildContext context, String title, String content,
    String text1, String text2, Function() onTap) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => Platform.isIOS
          ? CupertinoAlertDialog(
              title: Text(title),
              content: Text(content),
              actions: <Widget>[
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  isDefaultAction: true,
                  child: Text(text1),
                ),
                CupertinoDialogAction(
                  onPressed: onTap,
                  child: Text(text2),
                )
              ],
            )
          : AlertDialog(
              title: Text(title),
              content: Text(content),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(text1)),
                TextButton(onPressed: onTap, child: Text(text2))
              ],
            ));
}
