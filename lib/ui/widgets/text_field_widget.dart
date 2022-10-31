import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../styles/styles.dart';

class TextFieldWidget extends StatelessWidget {
  final VoidCallback onTap;
  final FocusNode focusNode;
  final bool isPassword;
  final String labelText;
  final TextEditingController controller;
  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.labelText,
    required this.isPassword,
    required this.focusNode,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51.h,
      width: 230.w,
      child: TextField(
        obscuringCharacter: '●',
        onTap: onTap,
        focusNode: focusNode,
        style: isPassword ? TextStyles.passwordText : Theme.of(context).textTheme.bodyMedium,
        obscureText: isPassword,
        controller: controller,
        decoration: InputDecoration(
          focusColor: const Color(0xFF828282),
          contentPadding: EdgeInsets.fromLTRB(0, 9.h, 0, 12.h),
          floatingLabelStyle:
              focusNode.hasFocus ? LabelStyles.floatingLabelStylePurple : LabelStyles.floatingLabelStyleGrey,
          labelText: labelText,
          labelStyle: Theme.of(context).textTheme.labelMedium,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFD8D8D8)),
          ),
        ),
      ),
    );
  }
}
