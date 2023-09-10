import 'package:flutter/material.dart';
import 'color.dart';
import 'custom_font_size.dart';

Text defaultText(String text,
    {double? fontSize,
    double? height,
    FontWeight? fontWeight,
    Color? color,
    int? maxLines,
    TextOverflow? overflow,
    TextAlign? textAlign,
    TextStyle? style}) {
  return Text(
    text,
    style: style ??
        TextStyle(
          fontSize: fontSize ?? 15.csp,
          fontWeight: fontWeight ?? FontWeight.w500,
          color: color ?? AppColors.black,
          height: height,
          fontFamily: "UberMoveText",
        ),
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overflow,
  );
}

TextStyle textStyleSemiBold28({
  Color? color,
  FontWeight? fontWeight,
  String? fontFamily = "UberMoveText",
}) {
  return TextStyle(
    fontSize: 28.csp,
    color: color ?? AppColors.black,
    height: 42.ch / 28.csp,
    fontFamily: fontFamily,
    fontWeight: fontWeight ?? FontWeight.w600,
  );
}

TextStyle textStyleMedium15({
  Color? color,
  FontWeight? fontWeight,
  String? fontFamily = "UberMoveText",
}) {
  return TextStyle(
    fontSize: 15.csp,
    color: color ?? AppColors.black,
    height: 21.ch / 15.csp,
    fontFamily: fontFamily,
    fontWeight: fontWeight ?? FontWeight.w500,
  );
}

TextStyle textStyleMedium13(
    {Color? color,
    FontWeight? fontWeight,
    String? fontFamily = "UberMoveText",
    double? letterSpacing}) {
  return TextStyle(
    fontSize: 13.csp,
    color: color ?? AppColors.black,
    height: 18.ch / 13.csp,
    fontFamily: fontFamily,
    letterSpacing: letterSpacing ?? 0,
    fontWeight: fontWeight ?? FontWeight.w500,
  );
}
