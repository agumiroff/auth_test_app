import 'package:almaty_test/presentation/pages/error_page/error_page.dart';
import 'package:almaty_test/presentation/pages/user_page/cubit/cubit.dart';
import 'package:almaty_test/presentation/pages/user_page/widgets/list_view_item.dart';
import 'package:almaty_test/presentation/pages/user_page/widgets/sliver_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  double leftPadding = 20.w;
  double bottomPadding = 24.h;
  @override
  void initState() {
    BlocProvider.of<UserPageCubit>(context).loadUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var controller = ScrollController(initialScrollOffset: 20.w);
    controller.addListener(() {
      setState(() {
        if (controller.position.pixels.h > 129.w) {
          return;
        }
        if (24.h - controller.position.pixels.h < 12) {
          bottomPadding = 11.h;
        } else {
          bottomPadding = 24.h - controller.position.pixels.h;
        }
        leftPadding = controller.position.pixels.w + 20.w;
      });
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<UserPageCubit, UserPageState>(builder: (context, state) {
        switch (state.status) {
          case UserPageStatus.loading:
            return const Center(child: CircularProgressIndicator());
          case UserPageStatus.initial:
            return const Center(child: CircularProgressIndicator());
          case UserPageStatus.failure:
            return const ErrorPage();
          case UserPageStatus.success:
            return CustomScrollView(
              controller: controller,
              slivers: [
                MySliverAppBar(leftPadding: leftPadding, bottomPadding: bottomPadding),
                SliverList(
                  delegate: SliverChildBuilderDelegate(childCount: state.listOfUsers.length, (context, index) {
                    return ListViewItem(
                      name: state.listOfUsers[index].name,
                      email: state.listOfUsers[index].email,
                      companyName: state.listOfUsers[index].companyName,
                    );
                  }),
                ),
              ],
            );
        }
      }),
    );
  }
}
