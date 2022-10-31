import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -20.h,
          left: -522.w,
          child: SizedBox(
            width: 1263.w,
            height: 474.h,
            child: Image.asset('assets/background.jpg', fit: BoxFit.cover),
          ),
        ),
        ClipPath(
          clipper: MyCustomClipper(),
          child: SizedBox(
            width: 375.w,
            height: 667.h,
            child: const DecoratedBox(
              decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
            ),
          ),
        ),
      ],
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - (289.h + 128.h));
    path.lineTo(0, size.height - 289.h);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
