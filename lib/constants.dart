import 'package:baby_store_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Colors
const kPrimaryColor = Color.fromARGB(255, 243, 242, 247);
const kDarkBlue = Color(0xff007fc2);
const kBlack = Colors.black;
const kGrey = Colors.grey;
const kWhite = Colors.white;
const kRed = Colors.red;
const kAmber = Colors.amber;
const kSideNavigatorBg = Color(0xfffafafa);

//Navigator Bar Titles
 const kNavigatorTitles = [
    'Home',
    'Categories',
    'Basket',
    'My Lists',
    'My Account',
  ];
  //Navigator Bar Icons
   const kNavigatorIcons = [
    Icons.home_rounded,
    Icons.category_rounded,
    Icons.shopping_basket_rounded,
    Icons.list_alt_rounded,
    Icons.person_3_rounded,
  ];
  //Sizes
  const kIconSize=24.0;
  const kNavigatorUnselectedFontSize=11.0;
  const kNavigatorselectedFontSize=15.0;

 


  //All Screen Padding
  const kScreenPadding =8.0;


//Time
const kTranstionDuration = Duration(seconds: 1);
const kViewNavigateDuration = Duration(seconds: 2);

//TEXTS
const kGtSectraFine = 'GT Sectra Fine';
const kSplashTitle = 'Discover a world of delightful finds for \n your little one.';
const kSearchHint = 'What are you looking for?';
const kBaby='Baby';
const kToddler='Toddler';
const kKids='Kids';
const kToys='Toys';
const kMaternity='Maternity';
const kGifts='Gifts';
const kFeaturedBrands='Featured Brands';

// productes  titles array
 const kProductesTitles = [
'BABY BOYS` CLOTHES',
'BABY GIRLS` CLOTHES',
'DIAPERS',
'CAR SEATS',
'STROLLERS & PRAMS',
'WALKERS & BOUNCERS',
'BEDROOM FURNITURE',
'BEDDING & BLANKETS',
'DIAPER BAGS',
'SALE',
'NEW IN',
'BESTSELLER',
];
// productes  titles bg color array
 const kProductesTitlesBackground = [
null,
null,
null,
null,
null,
null,
null,
null,
null,
kRed,
kBlack,
kAmber,
];

// Brands titles array
 const kBrandsImages = [
  AssetsData.philips,
  AssetsData.tommeTippee,
  AssetsData.drBrowns,
  AssetsData.disney,
  AssetsData.chicco,
  AssetsData.babyBreeza,
  AssetsData.joie,
  AssetsData.graco,
  AssetsData.babyZen,
];



//screen size
final ScreenUtil screenUtil = ScreenUtil();

