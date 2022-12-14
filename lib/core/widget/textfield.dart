// ignore: implementation_imports
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/colors.dart';

class ArtistTextFormField extends HookWidget {
  const ArtistTextFormField(
      {Key? key,
      required this.text,
      this.controller,
      this.errorText,
      this.keyboardType,
      this.initialValue,
      this.onChanged,
      this.focusNode,
      this.textInputAction,
      this.enable,
      this.inputFormatters,
      this.suffixIcon,
      this.textCapitalization = TextCapitalization.none,
      this.obsecureText = false,
      this.validator})
      : super(key: key);
  final String text;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final String? initialValue;
  final TextInputAction? textInputAction;
  final String? errorText;
  final bool obsecureText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final bool? enable;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 60,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20),
            color: ArtistColor.textFieldBackgroundColor),
        child: TextFormField(
          enabled: enable,
          focusNode: focusNode,
          obscureText: obsecureText,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          initialValue: initialValue,
          validator: validator,
          textCapitalization: textCapitalization,
          inputFormatters: inputFormatters,
          cursorColor: ArtistColor.hintTextColor,
          onChanged: onChanged,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            errorText: errorText,
            contentPadding:
                const EdgeInsets.only(left: 15, bottom: 10, top: 10),
            hintText: text,
            focusedErrorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
              color: Color(0XFFf5f5f5),
            )),
            errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
              color: Color(0XFFf5f5f5),
            )),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
              color: Color(0XFFf5f5f5),
            )),
            hintStyle: GoogleFonts.roboto(
                textStyle: const TextStyle(
              color: ArtistColor.hintTextColor,
              fontSize: 16.6,
              fontWeight: FontWeight.w400,
            )),
            focusColor: ArtistColor.hintTextColor,
            disabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFFf5f5f5))),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
              color: Color(0XFFf5f5f5),
            )),
          ),
          controller: controller,
        ),
      ),
    );
  }
}
