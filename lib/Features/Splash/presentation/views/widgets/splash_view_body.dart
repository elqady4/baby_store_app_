import 'package:baby_store_app/constants.dart';
import 'package:baby_store_app/core/utils/app_router.dart';
import 'package:baby_store_app/core/utils/assets.dart';
import 'package:baby_store_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'sliding_text.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({Key? key}) : super(key: key);

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimationText;
  late Animation<Offset> slidingAnimationImage;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidingWidget(
            slidingAnimation: slidingAnimationImage,
            widget: Image.asset(AssetsData.logo)),
        const SizedBox(
          height: 4,
        ),
        SlidingWidget(
            slidingAnimation: slidingAnimationText,
            widget: const Text(
              kSplashTitle,
              textAlign: TextAlign.center,
              style: Styles.textStyle18,
            )),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: kTranstionDuration,
    );

    slidingAnimationText =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);
    slidingAnimationImage =
        Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      kViewNavigateDuration,
      () {
        GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
      },
    );
  }
}
