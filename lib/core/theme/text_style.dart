import 'package:artist_replugged/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtistTextStyle {
  static TextStyle get headerTextStyle {
    return GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: ArtistColor.headerColor,
            fontWeight: FontWeight.w900,
            fontSize: 32));
  }

  static TextStyle get smallHeadingTextStyle {
    return GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: ArtistColor.textColor));
  }

  static TextStyle get settingTextStyle {
    return GoogleFonts.fjallaOne(
        textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: ArtistColor.hintTextColor));
  }

  static TextStyle get commentTextStyle {
    return GoogleFonts.fjallaOne(
        textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: ArtistColor.hintTextColor));
  }

  static TextStyle get tearmAndCandition {
    return const TextStyle(
        color: ArtistColor.headerColor,
        fontFamily: 'Roboto-Black',
        fontWeight: FontWeight.w800,
        fontSize: 14);
  }

  static TextStyle get enableButtonStyle {
    return GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: ArtistColor.backGroundColor));
    // return const TextStyle(
    //     color: ArtistColor.backGroundColor,
    //     fontFamily: 'Roboto-Black',
    //     fontWeight: FontWeight.w800,
    //     fontSize: 16);
  }

  static TextStyle get smallWhiteTextStyle {
    return GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: ArtistColor.backGroundColor,
            fontWeight: FontWeight.w400,
            fontSize: 12.666));
  }

  static TextStyle get watchNowTextStyle {
    return GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: ArtistColor.backGroundColor));
  }

  static TextStyle get searchTextStyle {
    return GoogleFonts.roboto(
        textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: ArtistColor.searchGreyColor));
    // return const TextStyle(
    //     fontFamily: 'Roboto-Black',
    //     fontSize: 16,
    //     fontWeight: FontWeight.w700,
    //     color: ArtistColor.searchGreyColor);
  }
}
