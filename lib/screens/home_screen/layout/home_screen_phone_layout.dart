import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_frontend/app_theme/app_theme_data.dart';
import 'package:hackathon_frontend/screens/home_screen/home_screen.dart';
import 'package:hackathon_frontend/screens/login_screen/widgets/login_alert_widget.dart';
import 'package:hackathon_frontend/controllers/pop_up_controller.dart';
import 'package:hackathon_frontend/screens/home_screen/view_model/home_screen_view_model.dart';
import 'package:hackathon_frontend/screens/home_screen/widgets/grid_view_widget.dart';
import 'package:hackathon_frontend/screens/login_screen/login_screen.dart';
import 'dart:ui' as ui;
import 'package:logger/logger.dart';
import 'package:hackathon_frontend/screens/progress_screen/progress_screen.dart';
import 'package:hackathon_frontend/screens/wallet_screen/wallet_screen.dart';


class HomeScreenPhoneLayout extends StatefulWidget {
  const HomeScreenPhoneLayout({Key? key}) : super(key: key);

  @override
  State<HomeScreenPhoneLayout> createState() => _HomeScreenPhoneLayoutState();
}

class _HomeScreenPhoneLayoutState extends State<HomeScreenPhoneLayout> {
  final HomeScreenViewModel homeScreenViewModel =
  Get.put(HomeScreenViewModel());

  @override
  void initState() {
    homeScreenViewModel.getGoalsData();
    super.initState();
  }


  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (_selectedIndex != index) {
      switch (index) {
        case 1:
          Get.to(const ProgressScreen());
          break;
        case 2:
          Get.to(const WalletScreen());
          break;
      }
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Fit & Fine',
          style: TextStyle(
            color: ThemeColor.textColor,
          ),
        ),
        backgroundColor: ThemeColor.appbarColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(

              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const LoginScreen();
                  },
                );
              },
              icon: Icon(Icons.person,
                color: ThemeColor.iconColor,
              ),
              iconSize: 30.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
              start: 10, top: 20, end: 10, bottom: 5),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Text(
                    'HEALTH AND LIFESTYLE',
                    style: TextStyle(
                        fontSize: 25,
                        color: ThemeColor.titleColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GridViewWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ThemeColor.navBarColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color : ThemeColor.iconColor,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, color : ThemeColor.iconColor,),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet_rounded,
                color : ThemeColor.iconColor),
            label: 'Wallet',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: ThemeColor.subTextColor,
        selectedItemColor: ThemeColor.textColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
