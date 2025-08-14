import 'package:citiapp/core/design_system/atoms/app_icon.dart';
import 'package:citiapp/core/design_system/atoms/app_text.dart';
import 'package:citiapp/core/design_system/atoms/circular_avatar.dart';
import 'package:citiapp/core/design_system/design_tokens.dart';
import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  final String initials;
  final Color avatarColor;
  final String title;
  final String? subtitle;
  final String? amount;
  final String? status;
  final VoidCallback? onTap;

  const AccountTile({
    Key? key,
    required this.initials,
    required this.avatarColor,
    required this.title,
    this.subtitle,
    this.amount,
    this.status,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(DesignTokens.spaceM),
        child: Row(
          children: [
            CircularAvatar(initials: initials, backgroundColor: avatarColor),
            const SizedBox(width: DesignTokens.spaceM),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: title,
                    style: DesignTokens.bodyMedium,
                    maxLines: 1,
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: DesignTokens.spaceXS),
                    AppText(
                      text: subtitle!,
                      style: DesignTokens.bodySmall,
                      maxLines: 1,
                    ),
                  ],
                  if (amount != null) ...[
                    const SizedBox(height: DesignTokens.spaceXS),
                    AppText(
                      text: amount!,
                      style: DesignTokens.bodySmall.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (status != null) ...[
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: DesignTokens.spaceS,
                  vertical: DesignTokens.spaceXS,
                ),
                decoration: BoxDecoration(
                  color: DesignTokens.warningColor,
                  borderRadius: BorderRadius.circular(DesignTokens.radiusS),
                ),
                child: AppText(
                  text: status!,
                  style: DesignTokens.caption.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: DesignTokens.spaceS),
            ],
            const AppIcon(
              icon: Icons.chevron_right,
              color: DesignTokens.textSecondary,
            ),
          ],
        ),
      ),
    );
  }
}
