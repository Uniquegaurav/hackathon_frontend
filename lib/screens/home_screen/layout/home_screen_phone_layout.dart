
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_frontend/screens/login_screen/widgets/login_alert_widget.dart';
import 'package:hackathon_frontend/controllers/pop_up_controller.dart';
import 'package:hackathon_frontend/screens/home_screen/view_model/home_screen_view_model.dart';
import 'package:hackathon_frontend/screens/home_screen/widgets/grid_view_widget.dart';
import 'package:hackathon_frontend/screens/login_screen/login_screen.dart';
import 'dart:ui' as ui;



class HomeScreenPhoneLayout extends StatefulWidget {
  const HomeScreenPhoneLayout({Key? key}) : super(key: key);

  @override
  State<HomeScreenPhoneLayout> createState() => _HomeScreenPhoneLayoutState();
}

class _HomeScreenPhoneLayoutState extends State<HomeScreenPhoneLayout> {

  final HomeScreenViewModel homeScreenViewModel =
  Get.put(HomeScreenViewModel());
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fit & Fine'),
        backgroundColor: const Color.fromARGB(255, 231, 62, 98),
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
              icon: const Icon(Icons.person),
              iconSize: 30.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
              child: Column(
                children: [
                  Text(
                    'Greetings, planet!',
                    style: TextStyle(
                        fontSize: 35,
                        foreground: Paint()
                          ..shader =ui.Gradient.linear(
                            const Offset(0, 120),
                            const Offset(30, 20),
                            <Color>[
                              Colors.blue,
                              Colors.red,
                            ],
                          )
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GridViewWidget(),
                ],
              ),
        ),
    ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 59, 99),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.white,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month,color: Colors.white),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_rounded,color: Colors.white),
            label: 'Wallet',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
