
import 'package:flutter/material.dart';
import 'package:hackathon_frontend/models/app_theme_data.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color?>(
          AppThemeData.instance.primaryColor,
        ),
      ),
    );
  }
}