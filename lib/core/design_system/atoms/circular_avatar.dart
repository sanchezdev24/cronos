import 'package:citiapp/core/design_system/atoms/app_text.dart';
import 'package:citiapp/core/design_system/design_tokens.dart';
import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  final String initials;
  final Color backgroundColor;
  final double size;

  const CircularAvatar({
    Key? key,
    required this.initials,
    required this.backgroundColor,
    this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(DesignTokens.radiusS)),
      child: Center(
        child: AppText(
          text: initials,
          style: DesignTokens.bodyMedium.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
