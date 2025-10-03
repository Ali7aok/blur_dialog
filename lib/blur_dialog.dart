library blur_dialog;

import 'dart:ui';
import 'package:flutter/material.dart';

/// A customizable blur dialog with title, close button, and flexible content.
///
/// Example:
/// ```dart
/// showBlurDialog(
///   context: context,
///   title: "My Dialog",
///   children: [
///     Text("Hello World"),
///     ElevatedButton(
///       onPressed: () => Navigator.pop(context),
///       child: Text("OK"),
///     ),
///   ],
/// );
/// ```
Future<void> showBlurDialog({
  required BuildContext context,
  String? title,
  List<Widget>? children,

  /// By default the close button is shown.
  bool showCloseButton = true,

  // Customization options
  double blurX = 5,
  double blurY = 5,
  Color barrierColor = const Color(0x33000000),
  Color backgroundColor = Colors.white,
  double backgroundOpacity = 0.9,
  BorderRadius borderRadius = const BorderRadius.all(Radius.circular(16)),
  Color borderColor = Colors.transparent,
  double borderWidth = 0,
}) {
  return showDialog(
    context: context,
    barrierColor: barrierColor,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurX, sigmaY: blurY),
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: BorderSide(color: borderColor, width: borderWidth),
          ),
          backgroundColor: backgroundColor.withOpacity(backgroundOpacity),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Row (title + close button)
                if (title != null || showCloseButton)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (title != null)
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      if (showCloseButton)
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                    ],
                  ),

                if (children != null) ...children,
              ],
            ),
          ),
        ),
      );
    },
  );
}
