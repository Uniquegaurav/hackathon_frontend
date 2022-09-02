import 'package:flutter/material.dart';
import 'package:hackathon_frontend/screens/plan_Screen/widgets/plan_form_widget.dart';
class PlanScreenPhoneLayout extends StatelessWidget {
  const PlanScreenPhoneLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plans"),
        backgroundColor: const Color.fromARGB(255, 231, 62, 98),
      ),
      body: const PlanFormWidget(),
    );
  }
}
