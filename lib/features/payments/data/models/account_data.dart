import 'package:flutter/material.dart';

class AccountData {
  final String initials;
  final Color avatarColor;
  final String title;
  final String? subtitle;
  final String? amount;
  final String? status;
  final VoidCallback? onTap;

  AccountData({
    required this.initials,
    required this.avatarColor,
    required this.title,
    this.subtitle,
    this.amount,
    this.status,
    this.onTap,
  });
}
