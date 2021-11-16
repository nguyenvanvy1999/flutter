import 'package:flutter/material.dart';

void showActionSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(
      message,
      style: const TextStyle(fontSize: 16),
    ),
    action: SnackBarAction(
      label: 'Click Me',
      onPressed: () => {},
    ),
  );

  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(snackBar);
}

void showFloatingSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(
      message,
      style: const TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
    ),
    backgroundColor: Colors.green,
    duration: const Duration(seconds: 3),
    shape: const StadiumBorder(),
    margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    behavior: SnackBarBehavior.floating,
    elevation: 0,
  );

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}

void showCustomSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.info_outline, size: 32),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            message,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    ),
    backgroundColor: Colors.green,
    duration: const Duration(seconds: 3),
    shape: const StadiumBorder(),
    margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    behavior: SnackBarBehavior.floating,
    elevation: 0,
  );

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}

void showErrorSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.error_outline, size: 32),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            message,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    ),
    backgroundColor: Colors.red,
    duration: const Duration(seconds: 1),
    behavior: SnackBarBehavior.fixed,
  );

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}
