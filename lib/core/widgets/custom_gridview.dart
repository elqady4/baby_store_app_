import 'package:baby_store_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required this.children});

  final List<Widget> children ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenUtil.screenWidth / 1.32,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: ScreenUtil().scaleWidth > 500 ? 4 : 3,
        children: children,
      ),
    );
  }
}