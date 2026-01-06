import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/home/home_screen.dart';
import 'features/confirmation/confirmation_screen.dart';
import 'features/wallet/ticket_wallet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Somasoma',
      theme: AppTheme.darkTheme,
      home: const HomeScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/confirmation':
            return MaterialPageRoute(builder: (_) => const ConfirmationScreen());
          case '/wallet':
            return MaterialPageRoute(builder: (_) => const TicketWalletScreen());
          default:
            return null;
        }
      },
      debugShowCheckedModeBanner: false,
    );
  }
}