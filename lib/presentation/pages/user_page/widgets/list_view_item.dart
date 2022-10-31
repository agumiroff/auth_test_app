import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../ui/widgets/avatar_widget.dart';
import '../../../../ui/widgets/text_widgets/body_medium.dart';
import '../../../../ui/widgets/text_widgets/body_small.dart';
import '../../../../ui/widgets/text_widgets/headline_small.dart';

class ListViewItem extends StatelessWidget {
  final String name;
  final String email;
  final String companyName;
  const ListViewItem({
    Key? key,
    required this.name,
    required this.email,
    required this.companyName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 375.w,
        height: 80.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 10.h),
          child: Row(
            children: [
              const AvatarWidget(),
              SizedBox(width: 21.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 26.h,
                    child: HeadlineSmall(text: name),
                  ),
                  SizedBox(
                    height: 16.h,
                    child: BodySmallText(text: email),
                  ),
                  SizedBox(
                    height: 16.h,
                    child: BodySmallTextBlack(text: companyName),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
