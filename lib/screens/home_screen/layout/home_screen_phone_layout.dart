
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_frontend/screens/home_screen/view_model/home_screen_view_model.dart';
import 'package:hackathon_frontend/screens/home_screen/widgets/grid_view_widget.dart';




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
        title: const Text('APP BAR'),
        backgroundColor: const Color.fromARGB(255, 118, 123, 203),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () async {},
              icon: const Icon(Icons.add),
              iconSize: 30.0,
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
            child: GridViewWidget(),
      ),
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_rounded),
            label: 'Wallet',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
