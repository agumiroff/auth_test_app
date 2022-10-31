import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonStyles {
  static final ButtonStyle elevatedButtonStyle = ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          color: Colors.white,
          fontFamily: 'SF Pro Text',
          fontSize: 16.sp,
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(155, 81, 224, 50)),
      minimumSize: MaterialStateProperty.all<Size>(Size(230.w, 38.h)),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.r)),
      )));
}

class TextStyles {
  final Color color;

  static final TextStyle headlineLarge = TextStyle(
    fontStyle: FontStyle.normal,
    color: Colors.white,
    fontSize: 34.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'SF Pro Display',
  );

  static final TextStyle headlineMedium = TextStyle(
    fontStyle: FontStyle.normal,
    color: Colors.black,
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'SF Pro Display',
  );

  static final TextStyle headlineSmall = TextStyle(
    fontStyle: FontStyle.normal,
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'SF Pro Display',
  );

  static final TextStyle bodyMedium = TextStyle(
    fontStyle: FontStyle.normal,
    color: const Color(0xFF000000),
    fontSize: 16.sp,
    fontFamily: 'SF Pro Display',
  );

  static final TextStyle bodySmall = TextStyle(
    fontStyle: FontStyle.normal,
    color: const Color(0xFF8A8A8F),
    fontSize: 13.sp,
    fontFamily: 'SF Pro Display',
  );

  static final TextStyle bodySmallBlack = TextStyle(
    fontStyle: FontStyle.normal,
    color: const Color(0xFF000000),
    fontSize: 13.sp,
    fontFamily: 'SF Pro Display',
  );

  static final TextStyle passwordText = TextStyle(
    fontStyle: FontStyle.normal,
    color: Colors.black,
    fontSize: 20.sp,
    fontFamily: 'SF Pro Display',
  );

  TextStyles(this.color);
}

class LabelStyles {
  static final TextStyle simpleLabelStyle = TextStyle(color: const Color(0xFF999999), fontSize: 16.sp);
  static final TextStyle floatingLabelStylePurple = TextStyle(color: const Color(0xFF9B51E0), fontSize: 14.sp);
  static final TextStyle floatingLabelStyleGrey = TextStyle(color: const Color(0xFF999999), fontSize: 14.sp);
}
