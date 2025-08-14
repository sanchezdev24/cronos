import 'package:citiapp/core/design_system/design_tokens.dart';
import 'package:citiapp/core/design_system/molecules/account_tile.dart';
import 'package:citiapp/core/design_system/molecules/section_header.dart';
import 'package:citiapp/features/payments/data/models/account_data.dart';
import 'package:flutter/material.dart';

class AccountSection extends StatelessWidget {
  final String title;
  final List<AccountData> accounts;
  final String? actionText;
  final VoidCallback? onActionTap;

  const AccountSection({
    super.key,
    required this.title,
    required this.accounts,
    this.actionText,
    this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          title: title,
          actionText: actionText,
          onActionTap: onActionTap,
        ),
        const SizedBox(height: DesignTokens.spaceS),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: DesignTokens.spaceM),
          decoration: BoxDecoration(
            color: DesignTokens.cardColor,
            borderRadius: BorderRadius.circular(DesignTokens.radiusM),
          ),
          child: Column(
            children: accounts
                .asMap()
                .entries
                .map(
                  (entry) => Column(
                    children: [
                      AccountTile(
                        initials: entry.value.initials,
                        avatarColor: entry.value.avatarColor,
                        title: entry.value.title,
                        subtitle: entry.value.subtitle,
                        amount: entry.value.amount,
                        status: entry.value.status,
                        onTap: entry.value.onTap,
                      ),
                      if (entry.key < accounts.length - 1)
                        const Divider(
                          height: 1,
                          color: DesignTokens.dividerColor,
                          //indent: 72,
                        ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
