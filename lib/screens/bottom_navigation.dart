import 'package:crypto_app/controller/market_controller.dart';
import 'package:crypto_app/model/api_model.dart';
import 'package:crypto_app/screens/home.dart';
import 'package:crypto_app/screens/market.dart';
import 'package:crypto_app/screens/portfolio.dart';
import 'package:crypto_app/screens/profile.dart';
import 'package:crypto_app/screens/reward.dart';
import 'package:crypto_app/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  CryptoModel model = CryptoModel();

  _BottomNavigationState() {
    ApiServices().getModel().then((value) {
      setState(() {
        if (value != null) {
          model = value;
        }
      });
    }).onError(
      (error, stackTrace) {
        print(error);
      },
    );
  }

  int index = 0;

  void _onItemTapped(int indi) {
    switch (indi) {
      case 3:
        Get.put(MarketController());
        break;
      default:
    }
    setState(() {
      index = indi;
    });
  }

  final List<Widget> screens = [
    HomeScreen(),
    Portfolio(),
    Reward(),
    Market(),
    Profile()
  ];

  Widget getWidget(int index) {
    return screens[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: _onItemTapped,
        iconSize: 30,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xFF0063F5),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline),
              label: "Portfolio",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_rounded),
              label: "Reward",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined),
              label: "Market",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.white)
        ],
      ),
      body: screens.elementAt(index),
    );
  }
}
