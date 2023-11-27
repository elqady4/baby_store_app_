import 'package:baby_store_app/Features/Home/presentation/views/widgets/right_side_home_content.dart';
import 'package:baby_store_app/Features/Home/presentation/views/widgets/side_navigator_body.dart';
import 'package:baby_store_app/constants.dart';
import 'package:baby_store_app/core/widgets/bottom_navigation_bar.dart';
import 'package:baby_store_app/core/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(kScreenPadding),
        child: Column(
          children: [
             CustomSearchTextField(),
                    SizedBox(height: 10,),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SideNavigatorBody(),
                  SizedBox(width: 5,),
                  RightSideHomeContent(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigatorBar(),
    );
  }
}
