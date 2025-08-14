import 'package:citiapp/core/design_system/design_tokens.dart';
import 'package:citiapp/core/design_system/organisms/account_section.dart';
import 'package:citiapp/core/design_system/organisms/app_bar_custom.dart';
import 'package:citiapp/features/payments/data/models/account_data.dart';
import 'package:citiapp/features/payments/presentation/pages/destination_accounts_page.dart';
import 'package:flutter/material.dart';

class OriginAccountsPage extends StatefulWidget {
  const OriginAccountsPage({Key? key}) : super(key: key);

  @override
  _OriginAccountsPageState createState() => _OriginAccountsPageState();
}

class _OriginAccountsPageState extends State<OriginAccountsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarCustom(title: 'Cuenta origen'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // My Accounts Section
            const SizedBox(height: DesignTokens.spaceL),
            AccountSection(
              title: 'Elige una cuenta',
              accounts: [
                AccountData(
                  initials: 'L',
                  avatarColor: DesignTokens.primaryColor,
                  title: 'Los alamos **5544',
                  amount: '\$106,789.60',
                  onTap: () {
                    // Handle account selection
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DestinationAccountsPage(),
                      ),
                    );
                  },
                ),
              ],
            ),

            const SizedBox(height: DesignTokens.spaceXL),
          ],
        ),
      ),
    );
  }
}
