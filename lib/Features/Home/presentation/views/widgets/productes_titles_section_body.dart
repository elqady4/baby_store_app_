import 'package:baby_store_app/constants.dart';
import 'package:baby_store_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_card.dart';
import '../../../../../core/widgets/custom_gridview.dart';

class ProductesTitlesSectionBody extends StatelessWidget {
  const ProductesTitlesSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomGridView(
      children:List.generate(
          kProductesTitlesBackground.length,
          (index) => CustomCard(
            bgColor: kProductesTitlesBackground[index],
            child: Text(
              kProductesTitles[index],
              style: Styles.textStyle14.copyWith(color: index == 9 || index == 10 ? kWhite : kBlack ),
              textAlign: TextAlign.center,
            ),
          ),
        ) ,
    );

    
  }
}
