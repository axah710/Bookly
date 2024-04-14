import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xfffebda6),
            image: const DecorationImage(
              image: AssetImage(AssetsData.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
// SizedBox: This widget is used to give its child a specific size. The height
// property of the SizedBox is set to 30% of the total screen height. This is 
//achieved by MediaQuery.of(context).size.height * 0.3. MediaQuery is a widget 
//that provides information about the media (like screen size) in which the app 
//is being run.
// AspectRatio: This widget is the child of the SizedBox and is used to scale 
//the size of its child widget according to a specific aspect ratio. The 
//aspectRatio property is set to 2.7 / 4, which means the width of the
// AspectRatio widget will be adjusted to maintain this ratio with the
// height provided by the SizedBox.
// The combination of these widgets ensures that the child of the 
//AspectRatio widget will maintain a consistent 
//aspect ratio, regardless of screen size, while also filling a specific 
//height percentage of the screen. This is particularly useful for responsive 
//design, ensuring that the UI looks consistent across different device sizes.