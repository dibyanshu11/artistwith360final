import 'package:artist_replugged/core/theme/colors.dart';
import 'package:artist_replugged/core/widget/dialog_boxes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../core/theme/text_style.dart';

// ignore: must_be_immutable
class PrivacyPolicyScreens extends HookWidget {
  const PrivacyPolicyScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var position = useState(1);
    return Scaffold(
      backgroundColor: ArtistColor.backGroundColor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                  'Privacy Policy ',
                  style: ArtistTextStyle.headerTextStyle,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: MediaQuery.of(context).size.height,
                  child: IndexedStack(index: position.value, children: <Widget>[
                    WebView(
                      initialUrl:
                          'https://dev.artistreplugged.com/privacy-policy',
                      javascriptMode: JavascriptMode.unrestricted,
                      onPageStarted: (String value) {
                        position.value = 0;
                      },
                      onPageFinished: (String value) {
                        position.value = 0;
                      },
                    ),
                    Center(child: indiator(ArtistColor.buttomBarColor)),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}

class ListentomyMusic extends HookWidget {
  const ListentomyMusic({Key? key, required this.url}) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    var position = useState(1);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
            color: Color.fromARGB(255, 42, 106, 255),
            height: 60,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Text(
                  'Done',
                  style: ArtistTextStyle.enableButtonStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            )),

        // appBar: AppBar(
        //   backgroundColor: Colors.black,
        //   iconTheme: IconThemeData(color: Colors.white),
        // ),
        backgroundColor: ArtistColor.backGroundColor,
        body: WebView(
          initialUrl: url,
          javascriptMode: JavascriptMode.unrestricted,
          onPageStarted: (String value) {
            position.value = 0;
          },
          onPageFinished: (String value) {
            position.value = 0;
          },
        ),
      ),
    );
  }
}
