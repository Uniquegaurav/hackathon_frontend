import 'package:flutter/material.dart';
class PlanScreenPhoneLayout extends StatelessWidget {
  const PlanScreenPhoneLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plans"),
        backgroundColor: const Color.fromARGB(255, 118, 123, 203),
      ),
    );
  }
}
