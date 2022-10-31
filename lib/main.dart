import 'package:almaty_test/presentation/pages/login_page/login_page.dart';
import 'package:almaty_test/presentation/pages/user_page/cubit/cubit.dart';
import 'package:almaty_test/presentation/pages/user_page/user_page.dart';
import 'package:almaty_test/ui/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'domain/use_cases/get_user_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: (BuildContext context, Widget? child) {
        return const MainPage();
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test task',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyles.elevatedButtonStyle),
        textTheme: TextTheme(
          headlineLarge: TextStyles.headlineLarge,
          headlineMedium: TextStyles.headlineMedium,
          headlineSmall: TextStyles.headlineSmall,
          bodySmall: TextStyles.bodySmall,
          bodyMedium: TextStyles.bodyMedium,
          labelMedium: LabelStyles.simpleLabelStyle,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0x809B51E0),
        ),
      ),
      routes: {
        '/': (context) => const LoginPage(),
        '/user_page': (context) => BlocProvider<UserPageCubit>(
              create: (context) => UserPageCubit(GetUserDataUseCase())..loadUserData(),
              child: const UserPage(),
            ),
      },
    );
  }
}
