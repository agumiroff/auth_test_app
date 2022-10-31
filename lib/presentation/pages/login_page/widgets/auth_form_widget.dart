import 'package:almaty_test/ui/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../ui/widgets/elevated_button_widget.dart';

class AuthorizationFormWidget extends StatefulWidget {
  const AuthorizationFormWidget({
    Key? key,
    required this.loginController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController loginController;
  final TextEditingController passwordController;

  @override
  State<AuthorizationFormWidget> createState() => _AuthorizationFormWidgetState();
}

class _AuthorizationFormWidgetState extends State<AuthorizationFormWidget> {
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      height: 348.h,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 60.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldWidget(
                controller: widget.loginController,
                labelText: 'Email',
                isPassword: false,
                focusNode: emailFocus,
                onTap: () {
                  setState(() {
                    FocusScope.of(context).requestFocus(emailFocus);
                  });
                },
              ),
              SizedBox(height: 32.h),
              TextFieldWidget(
                controller: widget.passwordController,
                labelText: 'Пароль',
                isPassword: true,
                focusNode: passwordFocus,
                onTap: () {
                  setState(() {
                    FocusScope.of(context).requestFocus(passwordFocus);
                  });
                },
              ),
              SizedBox(height: 56.h),
              ElevatedButtonWidget(
                text: 'Войти',
                onPressed: () {
                  Navigator.pushNamed(context, '/user_page');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
