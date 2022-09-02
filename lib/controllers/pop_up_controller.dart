
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_frontend/models/app_theme_data.dart';

import '../common_widgets/app_loader.dart';


class PopUpController {
  static PopUpController? _instance;

  static PopUpController get instance => _instance ??= PopUpController._();

  PopUpController._();

  bool isPopupOpen = false;

  Future<T?> openPopup<T>({
    required Widget child,
    bool isDismissible = true,
    WillPopCallback? onWillPop,
    VoidCallback? onCloseCallback,
    Alignment? alignment,
    bool closeOnTapOutside = true,
    EdgeInsetsDirectional titlePadding = EdgeInsetsDirectional.zero,
    EdgeInsetsDirectional contentPadding =
    const EdgeInsetsDirectional.fromSTEB(62, 50, 62, 50),
    double radius = 26.0,
  }) async {
    if (isPopupOpen) {
      closePopup();
    }
    isPopupOpen = true;
    Widget baseAlertDialog = AlertDialog(
      titlePadding: titlePadding,
      alignment: alignment,
      contentPadding: EdgeInsetsDirectional.zero,
      backgroundColor: AppThemeData.instance.backgroundLight1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      content: Stack(
        children: [
          if (isDismissible)
            PositionedDirectional(
              top: 26,
              end: 26,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: closePopup,
                  child: const Icon(
                    Icons.clear,
                    size: 19,
                  ),
                ),
              ),
            ),
          Padding(
            padding: contentPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                child,
              ],
            ),
          ),
        ],
      ),
      buttonPadding: EdgeInsets.zero,
      scrollable: true,
    );
    return Get.dialog<T>(
      WillPopScope(
        onWillPop: onWillPop ?? _onWillPop,
        child: baseAlertDialog,
      ),
      barrierDismissible: closeOnTapOutside,
    ).then((value) {
      resetPopupState();
      if (onCloseCallback != null) {
        onCloseCallback();
      }
    });
  }

  void closePopup() {
    if (isPopupOpen) {
      Get.back();
    }
  }

  Future<bool> _onWillPop() async {
    return true;
  }

  resetPopupState() {
    isPopupOpen = false;
  }

  ///Loading overlay with a grey background
  ///Can be used when awaiting a future, mostly for api calls when screen content is visible
Future<T?> openLoadingOverlay<T>({Function? onCloseCallback}) async {
    if (isPopupOpen) {
      closePopup();
    }
    isPopupOpen = true;
    return Get.dialog(
      const AppLoader(),
      barrierDismissible: false,
    )..then((value) {
        resetPopupState();
        if (onCloseCallback != null) {
          onCloseCallback();
        }
      });
  }

}