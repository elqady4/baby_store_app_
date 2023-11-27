import 'package:baby_store_app/Features/Home/presentation/manager/providers/side_navigator_provider.dart';
import 'package:baby_store_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../constants.dart';

class SideNavigatorBody extends StatelessWidget {
  const SideNavigatorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color:kSideNavigatorBg,
         width: screenUtil.screenWidth/5.3,
        margin: const EdgeInsets.only(top: 10),
        child: Consumer<SideNavigatorProvider>(
          builder:(context, provider, child) =>  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sideOptionButton(text: kBaby,index:0, isSelected: provider.getSelectedIndex() ==0 ? true :false,context: context),
              sideOptionButton(text: kToddler,index:1,isSelected: provider.getSelectedIndex() ==1 ? true :false,context: context),
              sideOptionButton(text: kKids,index:2,isSelected: provider.getSelectedIndex() ==2 ? true :false,context: context),
              sideOptionButton(text: kToys,index:3,isSelected: provider.getSelectedIndex() ==3 ? true :false,context: context),
              sideOptionButton(text: kMaternity,index:4,isSelected: provider.getSelectedIndex() ==4 ? true :false,context: context),
              sideOptionButton(text: kGifts,index:5,isSelected: provider.getSelectedIndex() ==5 ? true :false,context: context),
            ],
          ),
        ),
      ),
    );
  }

  Widget sideOptionButton({required String text, void Function()? onPressed,required bool isSelected ,required int index,required BuildContext context}) {
    return GestureDetector(
      onTap: () => Provider.of<SideNavigatorProvider>(context,listen: false).selectIndex(index),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              isSelected ?
              Container(color: kBlack,width: 2,height: 30) : const SizedBox(),
              const SizedBox(width: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  onTap: onPressed,
                  child: Text(
                        text,
                        style: Styles.textStyle14,
                      )
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 0.1,
            color: kBlack,
          ),
        ],
      ),
    );
  }
}