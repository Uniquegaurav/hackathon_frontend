//
// Created by bhavyadeeppurswani on 24/07/22.
//

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_frontend/app_theme/app_theme_data.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback? onClicked;
  final bool isDisabled;
  final String title;
  final Rx<Color> _activeColor = ThemeColor.secondaryButtonColor.obs;
  final TextStyle? textStyle;
  final double height;
  final double width;
  final EdgeInsetsDirectional? padding;

  SecondaryButton({
    Key? key,
    this.onClicked,
    this.isDisabled = false,
    required this.title,
    this.textStyle,
    this.height = 100,
    this.width = 28,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Obx(
            () => ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: _activeColor.value,
            elevation: 0,
            splashFactory: NoSplash.splashFactory,
            side: BorderSide(color: ThemeColor.titleColorBright),
            padding: padding ?? const EdgeInsetsDirectional.all(4),
          ),
          onHover: (entered) {
            _activeColor.value = entered
                ? ThemeColor.navBarColor
                : ThemeColor.appbarColor;
          },
          onPressed: () {
            _activeColor.value = ThemeColor.backgroundColor;
            onClicked?.call();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: ThemeColor.secondaryButtonTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
