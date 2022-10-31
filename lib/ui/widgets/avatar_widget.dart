import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      height: 60.h,
      child: const CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('assets/bx-user-circle.png'),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
