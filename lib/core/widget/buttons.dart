import 'package:artist_replugged/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../theme/colors.dart';

class ArtistThemeButton extends HookWidget {
  const ArtistThemeButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    var checkDeveice =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return SizedBox(
      height: 65,
      width: checkDeveice ? MediaQuery.of(context).size.width : 400,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: ArtistColor.headerColor,
              disabledForegroundColor: ArtistColor.hintTextColor.withOpacity(0.38), disabledBackgroundColor: ArtistColor.hintTextColor.withOpacity(0.12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // <-- Radius
              )),
          clipBehavior: Clip.hardEdge,
          onPressed: onPressed,
          child: Text(
            text,
            style: ArtistTextStyle.enableButtonStyle,
          )),
    );
  }
}

