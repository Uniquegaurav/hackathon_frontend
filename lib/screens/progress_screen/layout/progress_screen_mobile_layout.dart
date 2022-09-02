import 'package:flutter/material.dart';
import 'package:hackathon_frontend/screens/progress_screen/widgets/progress_grid_view.dart';
class ProgressScreenMobileLayout extends StatelessWidget {
  const ProgressScreenMobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Progress'),
        backgroundColor: const Color.fromARGB(255, 231, 62, 98),
      ),
      body: const Padding(
        padding: EdgeInsets.all(40.0),
        child: ProgressGridViewWidget(),
      ),
    );
  }
}
