import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/src/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/pages/homePage.dart';
import 'src/pages/money_transfer_page.dart';
import 'src/widgets/customRoute.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wallet App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme.copyWith(
          textTheme: GoogleFonts.mulishTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        routes: <String, WidgetBuilder>{
          '/': (_) => const HomePage(),
          '/transfer': (_) => const MoneyTransferPage()
        },
        onGenerateRoute: (RouteSettings settings) {
          final List<String> pathElements = settings.name!.split('/');
          if (pathElements[0].isEmpty) {
            return null;
          }
          if (pathElements[0] == 'transfer') {
            return CustomRoute<bool>(
                builder: (BuildContext context) => const MoneyTransferPage());
          }
        }
    );
  }
}