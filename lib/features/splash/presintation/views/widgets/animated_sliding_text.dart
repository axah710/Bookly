import 'package:flutter/material.dart';

class AnimatedSlidingText extends StatelessWidget {
  const AnimatedSlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        // Listen to the slidingAnimation and update
        // UI( only the text ) each frame or second ...
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              "Read Free Books",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
// AnimatedBuilder: This widget listens to the slidingAnimation and rebuilds
// every time the AnimationController ticks, i.e., when a new frame needs to
// be rendered. Inside the builder, a SlideTransition uses the current value of 
//slidingAnimation to set the position of its child widget. This results in the 
//"Read Free Books" text sliding into view as the animation progresses.