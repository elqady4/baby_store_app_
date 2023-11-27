import 'package:baby_store_app/Features/Home/presentation/views/widgets/featured_brands_body.dart';
import 'package:baby_store_app/Features/Home/presentation/views/widgets/productes_titles_section_body.dart';
import 'package:baby_store_app/constants.dart';
import 'package:baby_store_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class RightSideHomeContent extends StatelessWidget {
   const RightSideHomeContent({super.key});

  

  @override
  Widget build(BuildContext context) {
    
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AssetsData.bannar001,width: screenUtil.screenWidth/1.32),
          const SizedBox(height: 10,),
          const ProductesTitlesSectionBody(),
          const SizedBox(height: 10,),
          Image.asset(AssetsData.bannar002,width: screenUtil.screenWidth/1.32),
          const SizedBox(height: 20,),
          const FeaturedBrandsBody(),
        ],
      ),
    );
  }
}