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