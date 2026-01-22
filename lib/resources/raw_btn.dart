import 'package:flutter/material.dart';

class RawBtn extends StatelessWidget {
  final double radius;
  final String title;
  final double titleFontSize;
  final double borderWidth;
  final Color titleColor;
  final Color borderColor;
  final Color? buttonColor;
  final double height;
  final double width;
  final VoidCallback onPressed;
  final Widget? leading; // Optional widget for the image/icon
  final double buttonOpacity; // Button opacity

  const RawBtn({
    super.key,
    required this.radius,
    required this.title,
    required this.titleFontSize,
    required this.borderWidth,
    required this.titleColor,
    required this.borderColor,
    this.buttonColor,
    required this.height,
    required this.width,
    required this.onPressed,
    this.leading,
    this.buttonOpacity = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(
            (buttonColor ?? Colors.transparent)
                .withAlpha((buttonOpacity * 255).toInt()),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side: BorderSide(
                color: borderColor,
                width: borderWidth,
              ),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leading != null) ...[
              leading!,
              const SizedBox(width: 8),
            ],
            Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontSize: titleFontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
