import 'package:citiapp/core/design_system/atoms/app_icon.dart';
import 'package:citiapp/core/design_system/atoms/app_text.dart';
import 'package:citiapp/core/design_system/design_tokens.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackPressed;

  const AppBarCustom({super.key, required this.title, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const AppIcon(icon: Icons.arrow_back_ios),
        onPressed: onBackPressed ?? () => {},
      ),
      title: AppText(text: title, style: DesignTokens.headingLarge),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
