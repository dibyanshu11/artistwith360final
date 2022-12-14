import 'package:artist_replugged/core/widget/dialog_boxes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../core/theme/colors.dart';
import '../../core/theme/text_style.dart';

class TermAndConditions extends HookWidget {
  const TermAndConditions({Key? key}) : super(key: key);

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
              const SizedBox(
                height: 20,
              ),
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
                  'Artist Replugged Terms ',
                  style: ArtistTextStyle.headerTextStyle,
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: MediaQuery.of(context).size.height,
                  child: IndexedStack(index: position.value, children: <Widget>[
                    WebView(
                      initialUrl:
                          'https://dev.artistreplugged.com/terms-conditions',
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
