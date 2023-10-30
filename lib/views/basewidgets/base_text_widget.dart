import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseTextWidget extends StatelessWidget {
  const BaseTextWidget(
      this.text, {
        super.key,
        this.style,
        this.color,
        this.fontSize,
        this.maxLines,
        this.overflow,
        this.textDirection,
        this.decoration,
        this.decorationColor,
        this.textAlign,
      });
  final String text;
  final TextStyle? style;
  final Color? color;
  final double? fontSize;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final TextDirection? textDirection;
  final Color? decorationColor;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: textDirection,
      textAlign: textAlign,
      maxLines: maxLines,
      style: style != null
          ? style!.copyWith(
          color: color,
          fontSize: fontSize != null ? fontSize!.sp : style!.fontSize?.sp,
          overflow: overflow,
          decoration: decoration,
          decorationColor: decorationColor
      )
          : null,
    );
  }
}
