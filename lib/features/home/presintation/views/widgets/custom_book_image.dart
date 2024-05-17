import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.urlImage});
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
      ),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        // The aspectRatio: 2.6 / 4 in specifies that the width
        //of the child widget (in this case, a Container) should be 2.6 units
        //for every 4 units of height. This ratio ensures that the Container
        //maintains a consistent shape, regardless of changes in its overall
        // size. This is particularly useful for maintaining a consistent
        // layout across different screen sizes or orientations.
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            15.2,
          ),
          child: CachedNetworkImage(
            imageUrl: urlImage,
            fit: BoxFit.fill,
            progressIndicatorBuilder: (
              context,
              url,
              downloadProgress,
            ) =>
                Center(
              child: CircularProgressIndicator(
                value: downloadProgress.progress,
              ),
            ),
            errorWidget: (
              context,
              url,
              error,
            ) =>
                const Icon(
              Icons.error,
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
//aspectRatio property is set to 2.6 / 4, which means the width of the
// AspectRatio widget will be adjusted to maintain this ratio with the
// height provided by the SizedBox.

// The combination of these widgets ensures that the child of the
//AspectRatio widget will maintain a consistent
//aspect ratio, regardless of screen size, while also filling a specific
//height percentage of the screen. This is particularly useful for responsive
//design, ensuring that the UI looks consistent across different device sizes.
