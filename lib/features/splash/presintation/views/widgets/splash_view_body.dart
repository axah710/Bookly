import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/splash/presintation/views/widgets/animated_sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  // AnimationController: This is the core of the animation. It manages the
  //animation's state and timing. In my code, animationController is
  //initialized with a duration of one second. It's responsible for starting
  //the animation using animationController.forward() method in the initState.
  // The vsync parameter prevents off-screen animations from
  // consuming unnecessary resources.

  // To make the animation from values 0 to 1 only...
  // why added late ? to not make the obj nullable????? ...
  // the value will be taken in the init state ....

  late Animation<Offset> slidingAnimation;

  // Defines the range and values the animation operates over.
  //above the animationController and faciliates works with another values
  //not only 0 to 1...

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,

      // Why Stretch ? to let the image take all the width available...

      children: [
        Image.asset(
          AssetsData.logo,
        ),
        const SizedBox(
          height: 7,
        ),
        AnimatedSlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();

    //animationController.dispose(). This is important because
    //AnimationController can be resource-intensive as it uses system resources
    // to manage animation timings. If it is not properly disposed, it can lead
    // to memory leaks and performance issues.
    // Super Dispose Call: After disposing of the animationController, the
    // method calls super.dispose(). This call ensures that any
    //additional cleanup activities defined in the base class (State) are
    //executed. It's a best practice to call super.dispose() at the end of my
    //dispose method to adhere to the lifecycle management protocols of
    // Flutter's framework.
    // By implementing the dispose method in this way, I ensure that
    // the widget cleans up after itself, maintaining the app's performance
    //and resource usage.
    // Must dispose any Controller may I have ...
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 7),
      end: Offset.zero,
    ).animate(
      animationController,
    );

    // Tween: This defines the range and values the animation operates over.
    // In my case, Tween<Offset> specifies that the animation starts at
    //an offset of (0, 7) and ends at an offset of (0, 0). This effectively
    //means the animated object will move from a position 7 units down from
    //its starting point to its final position aligned with its parent.

    animationController.forward();

    // Trigger The animationController...
  }
  void navigateToHome() {
  Future.delayed(const Duration(seconds: 2), () {
    GoRouter.of(context).push(
      AppRouter.kHomeViewRoute,
    );
    // Use GoRouter to navigate to the HomeView

    // Get.to(
    //   () => const HomeView(),
    //   transition: Transition.fade,
    //   duration: kTranstionDuration,
    // );
  });
}
// Using get state mangament to navigate...
// The function uses the Future.delayed method to delay the execution of the
//code inside it by 2 seconds.
// After the delay, the Get.to method is called to navigate to the HomeView.
// The HomeView is passed as a callback function to the Get.to method.
// The transition animation is set to Transition.fade and the duration is
//set to kTranstionDuration (milliseconds: 256).
}
