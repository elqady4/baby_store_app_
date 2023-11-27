import 'package:baby_store_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_card.dart';
import '../../../../../core/widgets/custom_gridview.dart';

class FeaturedBrandsBody extends StatelessWidget {
  const FeaturedBrandsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const Text(kFeaturedBrands,style: Styles.textStyle20,),
         CustomGridView(
      children:List.generate(
          kBrandsImages.length,
          (index) => CustomCard(
            child: Image.asset(kBrandsImages[index]),
          ),
        ) ,
    )
      ],
    );
  }
}