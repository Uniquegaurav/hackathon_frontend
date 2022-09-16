

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_frontend/app_theme/app_theme_data.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onClicked;
  final bool isDisabled;
  final String title;
  final Rx<Color> _activeColor = ThemeColor.primaryButtonColor.obs;
  final TextStyle? textStyle;
  final double height;
  final double width;
  final EdgeInsetsDirectional? padding;

  PrimaryButton({
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
            padding: padding ?? const EdgeInsetsDirectional.all(5),
          ),
          onHover: (entered) {
            _activeColor.value = entered
                ? ThemeColor.titleColorLight
                : ThemeColor.titleColorBright;
          },
          onPressed: isDisabled
              ? null
              : () {
                  _activeColor.value = ThemeColor.titleColor;
                  onClicked?.call();
                },
          child: Text(
            title,
            style: TextStyle(
              color: ThemeColor.primaryButtonTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
