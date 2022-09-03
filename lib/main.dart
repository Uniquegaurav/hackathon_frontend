import 'package:flutter/material.dart';
import 'package:hackathon_frontend/routes/routes.dart';
import 'package:hackathon_frontend/screens/home_screen/home_screen.dart';
import 'package:hackathon_frontend/screens/progress_screen/progress_screen.dart';
import 'package:hackathon_frontend/screens/wallet_screen/wallet_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: const HomeScreen(),
    initialRoute: '/home',
    getPages: appRoutes(),
  ));

