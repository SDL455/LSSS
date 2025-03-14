import 'package:flutter/material.dart';
import 'package:plp/core/color/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final TextStyle? textStyle;
  final double borderRadius;
  final EdgeInsets padding;
  final IconData? icon;

  const ButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = AppColor.primaryColor,
    this.textStyle,
    this.borderRadius = 8.0,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: padding,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                color: textStyle?.color ?? Colors.white,
              ),
              const SizedBox(width: 8),
            ],
            Text(
              label,
              style: textStyle ??
                  const TextStyle(
                    color: Colors.white,
                    // fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
