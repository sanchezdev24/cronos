import 'package:citiapp/core/design_system/atoms/app_icon.dart';
import 'package:citiapp/core/design_system/design_tokens.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String hintText;
  final Function(String)? onChanged;

  const SearchBar({Key? key, required this.hintText, this.onChanged})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: DesignTokens.spaceM),
      decoration: BoxDecoration(
        color: DesignTokens.surfaceColor,
        borderRadius: BorderRadius.circular(DesignTokens.radiusS),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: DesignTokens.bodySmall,
          border: InputBorder.none,
          prefixIcon: const AppIcon(
            icon: Icons.search,
            color: DesignTokens.textSecondary,
          ),
        ),
      ),
    );
  }
}
