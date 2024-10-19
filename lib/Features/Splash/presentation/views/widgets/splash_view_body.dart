import 'package:depi_lms/Features/Splash/presentation/views/widgets/sliding_image.dart';
import 'package:depi_lms/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation, slidingAnimation2;

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
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            // Center(
            //   child: Image.asset(AssetsData.logo),
            // ),
            SlidingImage(slidingAnimation: slidingAnimation2),
            SlidingText(slidingAnimation: slidingAnimation),
          ],
        ),
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 1200));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(animationController);
    slidingAnimation2 =
        Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero)
            .animate(animationController);

    animationController.forward();

    // slidingAnimation.addListener(
    //   () {
    //     setState(() {});
    //   },
    // );
  }

  void navigateToHome() {
    Future.delayed(const Duration(milliseconds: 2500), () {
      GoRouter.of(context).push(AppRouter.kLoginView);
    });
  }
}
