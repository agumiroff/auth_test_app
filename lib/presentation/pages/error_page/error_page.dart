import 'package:almaty_test/presentation/pages/user_page/cubit/cubit.dart';
import 'package:almaty_test/ui/widgets/elevated_button_widget.dart';
import 'package:almaty_test/ui/widgets/text_widgets/body_medium.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/error_icon.png'),
            SizedBox(height: 36.h),
            const BodyMediumText(text: 'Не удалось загрузить информацию'),
            SizedBox(height: 32.h),
            ElevatedButtonWidget(
                text: 'Обновить',
                onPressed: () {
                  context.read<UserPageCubit>().loadUserData();
                }),
          ],
        ),
      ),
    );
  }
}
