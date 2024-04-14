import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presintation/views/home_view.dart';
import 'package:get/get.dart';

void navigateToHome() {
  Future.delayed(const Duration(seconds: 2), () {
    Get.to(
      () => const HomeView(),
      transition: Transition.fade,
      duration: kTranstionDuration,
    );
  });
}
// Using get state mangament to navigate...
// The function uses the Future.delayed method to delay the execution of the
//code inside it by 2 seconds.
// After the delay, the Get.to method is called to navigate to the HomeView.
// The HomeView is passed as a callback function to the Get.to method.
// The transition animation is set to Transition.fade and the duration is
//set to kTranstionDuration (milliseconds: 256).