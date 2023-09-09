import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  void changeLanguage(Locale newLocale) {
    EasyLocalization.of(Get.context!)!.setLocale(newLocale);
  }
}