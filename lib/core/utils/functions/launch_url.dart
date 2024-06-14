import 'package:bookly_app/core/utils/functions/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
// Future<void> launchCustomUrl(context, String url) async: This line defines
// a function named launchCustomUrl that takes two parameters: context and url.
// The function is asynchronous, as indicated by the async keyword.
  if (url != null) {
// if (url != null): This line checks if the url parameter is not null.
//The != operator is used to compare the url parameter with the null value.
// If the url parameter is not null, the code inside the if block will be
// executed.
    Uri uri = Uri.parse(
      url,
    );
    // Uri uri = Uri.parse(url);: This line creates a new Uri object from the
    //provided url parameter. The Uri.parse method is used to parse the URL string
    // into a Uri object.
    // parsing the URL
    if (await canLaunchUrl(
      uri,
    ))
    // if (await canLaunchUrl(uri)): This line checks if the device can launch
    //the URL specified by the uri object. The canLaunchUrl method is
    //asynchronous, so the await keyword is used to wait for the result.
    {
      await launchUrl(uri);
      // await launchUrl(uri);: If the URL can be launched, this line launches the
      // URL using the launchUrl method from the url_launcher package. The await
      //keyword is used to wait for the result of the asynchronous operation.
    } else {
      customSnackBar(
        context,
        'Could not launch $url',
      );
    }
  }
  // else: If the URL cannot be launched, this line starts an else block to
  // handle the error.
}
// It creates a Uri object by parsing the previewLink property of
//the bookModel.volumeInfo.
// It checks if the URL can be launched using the canLaunchUrl function.
//This function likely checks if the URL is valid and can be opened.
// If the URL can be launched, it then calls the launchUrl function to
// open the URL. This function likely opens the URL in the
//default browser or a web view.

