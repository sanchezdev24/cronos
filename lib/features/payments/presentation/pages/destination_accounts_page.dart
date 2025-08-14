import 'package:citiapp/core/design_system/design_tokens.dart';
import 'package:citiapp/core/design_system/molecules/account_tile.dart';
import 'package:citiapp/core/design_system/organisms/account_section.dart';
import 'package:citiapp/core/design_system/organisms/app_bar_custom.dart';
import 'package:citiapp/features/payments/data/models/account_data.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:citiapp/core/design_system/molecules/search_bar.dart';

class DestinationAccountsPage extends StatefulWidget {
  const DestinationAccountsPage({super.key});

  @override
  _DestinationAccountsPageState createState() =>
      _DestinationAccountsPageState();
}

class _DestinationAccountsPageState extends State<DestinationAccountsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarCustom(title: 'Cuenta destino'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Section
            Padding(
              padding: const EdgeInsets.all(DesignTokens.spaceM),
              child: SearchBar(
                hintText: 'Buscar',
                onChanged: (value) {
                  // Handle search logic
                },
              ),
            ),

            // New Account Section
            const SizedBox(height: DesignTokens.spaceS),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: DesignTokens.spaceM,
              ),
              decoration: BoxDecoration(
                color: DesignTokens.cardColor,
                borderRadius: BorderRadius.circular(DesignTokens.radiusM),
                /* boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ], */
              ),
              child: AccountTile(
                initials: '+',
                avatarColor: Colors.pink,
                title: 'Nueva cuenta',
                onTap: () {
                  // Handle new account creation
                },
              ),
            ),

            // My Accounts Section
            const SizedBox(height: DesignTokens.spaceL),
            AccountSection(
              title: 'Tus cuentas',
              accounts: [
                AccountData(
                  initials: 'L',
                  avatarColor: DesignTokens.primaryColor,
                  title: 'Cuenta de abasto **5544',
                  amount: '\$106,789.60',
                  onTap: () {
                    // Handle account selection
                  },
                ),
              ],
            ),

            // Saved Accounts Section
            const SizedBox(height: DesignTokens.spaceL),
            AccountSection(
              title: 'Cuentas guardadas',
              actionText: 'Editar',
              onActionTap: () {
                // Handle edit action
              },
              accounts: [
                AccountData(
                  initials: 'P',
                  avatarColor: Colors.orange,
                  title: 'Papelería industrial',
                  onTap: () {
                    // Handle account selection
                  },
                ),
                AccountData(
                  initials: 'A',
                  avatarColor: Colors.purple,
                  title: 'Alvaro **1263',
                  subtitle: 'Nu • Alvaro Gutierrez Flores',
                  onTap: () {
                    // Handle account selection
                  },
                ),
                AccountData(
                  initials: 'I',
                  avatarColor: Colors.teal,
                  title: 'Ignacio **8546',
                  subtitle: 'BBVA • Ignacio Jesus Velarde...',
                  onTap: () {
                    // Handle account selection
                  },
                ),
                AccountData(
                  initials: 'B',
                  avatarColor: Colors.grey,
                  title: 'Berenice **3183',
                  subtitle: 'Santander • Berenice M...',
                  status: 'En proceso',
                  onTap: () {
                    // Handle account selection
                  },
                ),
                AccountData(
                  initials: 'B',
                  avatarColor: DesignTokens.primaryColor,
                  title: 'Beto **3193',
                  onTap: () {
                    // Handle account selection
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
