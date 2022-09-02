import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_frontend/screens/wallet_screen/widgets/wallet_form_widget.dart';

class WalletScreenLayout extends StatelessWidget {
  const WalletScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallet"),
        backgroundColor: const Color.fromARGB(255, 231, 62, 98),
      ),
      body: WalletFormWidget(),
    );
  }
}