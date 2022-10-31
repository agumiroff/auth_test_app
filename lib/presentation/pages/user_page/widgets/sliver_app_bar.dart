import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({
    Key? key,
    required this.leftPadding,
    required this.bottomPadding,
  }) : super(key: key);

  final double leftPadding;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 114.h,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.fromLTRB(leftPadding, 31.h, 0, bottomPadding),
        title: const Text(
          'Пользователи',
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.black),
        ),
      ),
      leading: const SizedBox.shrink(),
      backgroundColor: Colors.white,
    );
  }
}
