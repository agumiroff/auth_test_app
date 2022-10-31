import 'package:almaty_test/presentation/pages/login_page/widgets/auth_form_widget.dart';
import 'package:almaty_test/ui/widgets/background_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../ui/widgets/text_widgets/headline_large.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardOn = MediaQuery.of(context).viewInsets.bottom > 0;
    final TextEditingController loginController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Stack(children: [
      const BackgroundImage(),
      Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          reverse: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 122.h),
              AnimatedOpacity(
                  opacity: isKeyboardOn ? 0 : 1,
                  duration: const Duration(milliseconds: 500),
                  child: const HeadlineLarge('Вход')),
              SizedBox(height: 40.h),
              Center(
                child: AuthorizationFormWidget(
                  loginController: loginController,
                  passwordController: passwordController,
                ),
              ),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    ]);
  }
}
