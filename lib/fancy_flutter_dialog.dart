import 'package:flutter/material.dart';

/// A custom dialog widget with a fancy design.
class FancyAlertDialog extends StatelessWidget {
  /// The title of the dialog.
  final String title;

  /// The background color of the dialog.
  final Color backgroundColor;

  /// The message displayed in the dialog.
  final String message;

  /// The text for the negative button.
  final String negativeBtnText;

  /// The background color of the positive button.
  final Color positiveBtnBackground;

  /// The text for the positive button.
  final String positiveBtnText;

  /// The background color of the negative button.
  final Color negativeBtnBackground;

  /// The callback function for when the positive button is clicked.
  final Function? onPositiveClicked;

  /// The callback function for when the negative button is clicked.
  final Function? onNegativeClicked;

  /// Creates a [FancyAlertDialog] widget.
  ///
  /// The [title], [backgroundColor], [message], [negativeBtnText],
  /// [positiveBtnBackground], [positiveBtnText], [negativeBtnBackground],
  /// [onPositiveClicked], and [onNegativeClicked] arguments must not be null.
  const FancyAlertDialog({
    Key? key,
    required this.title,
    required this.backgroundColor,
    required this.message,
    required this.negativeBtnText,
    required this.positiveBtnBackground,
    required this.positiveBtnText,
    required this.negativeBtnBackground,
    this.onPositiveClicked,
    this.onNegativeClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      content: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        TextButton(
          onPressed: () {
            if (onNegativeClicked != null) {
              onNegativeClicked!();
            }
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(negativeBtnBackground),
          ),
          child: Text(
            negativeBtnText,
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {
            if (onPositiveClicked != null) {
              onPositiveClicked!();
            }
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(positiveBtnBackground),
          ),
          child: Text(
            positiveBtnText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
