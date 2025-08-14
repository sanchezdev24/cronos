import 'package:citiapp/core/design_system/atoms/app_text.dart';
import 'package:citiapp/core/design_system/design_tokens.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String? actionText;
  final VoidCallback? onActionTap;

  const SectionHeader({
    Key? key,
    required this.title,
    this.actionText,
    this.onActionTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DesignTokens.spaceM),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: title,
            style: DesignTokens.bodyMedium.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          if (actionText != null)
            GestureDetector(
              onTap: onActionTap,
              child: AppText(
                text: actionText!,
                style: DesignTokens.bodySmall.copyWith(
                  color: DesignTokens.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
