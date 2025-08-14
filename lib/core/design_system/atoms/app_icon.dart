import 'package:citiapp/core/design_system/design_tokens.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final double? size;

  const AppIcon({Key? key, required this.icon, this.color, this.size})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color ?? DesignTokens.textPrimary,
      size: size ?? 24,
    );
  }
}
