import 'package:flutter/material.dart';

void customSnackBar(context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
      ),
    ),
  );
  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Could not launch $url')));:
//This line displays a snackbar with the message "Could not launch [url]" using
// the showSnackBar method from the ScaffoldMessenger widget. The of method is
//used to get the ScaffoldMessenger instance associated with the provided context.
//The SnackBar widget is used to create the snackbar with the specified message.
}
