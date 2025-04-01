import 'package:crypto_app/firebase_options.dart';
import 'package:crypto_app/screens/bottom_navigation.dart';
import 'package:crypto_app/screens/buy.dart';
import 'package:crypto_app/screens/coin_page.dart';
import 'package:crypto_app/screens/deposit.dart';
import 'package:crypto_app/screens/login.dart';
import 'package:crypto_app/screens/portfolio.dart';
import 'package:crypto_app/screens/quick_invest.dart';
import 'package:crypto_app/screens/sell.dart';
import 'package:crypto_app/screens/signup.dart';
import 'package:crypto_app/screens/withdraw.dart';
import 'package:crypto_app/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      //home: HomeScreen(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Wrapper()),
        GetPage(name: "/login", page: () => Login()),
        GetPage(name: "/signup", page: () => Signup()),
        GetPage(name: "/bottomnav", page: () => BottomNavigation()),
        GetPage(name: "/coinpage", page: () => CoinPage()),
        GetPage(name: "/portfolio", page: () => Portfolio()),
        GetPage(name: "/deposit", page: () => Deposit()),
        GetPage(name: "/withdraw", page: () => Withdraw()),
        GetPage(name: "/buy", page: () => Buy()),
        GetPage(name: "/sell", page: () => Sell()),
        GetPage(name: "/quickinvest", page: () => QuickInvest()),
      ],
    );
  }
}
