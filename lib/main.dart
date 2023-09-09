
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:garage_app/src/app.dart';


void main() async {
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
     // supportedLocales: [Locale('en', 'US'), Locale('bn', 'BD')],
      supportedLocales: [Locale('bn', 'BD')],
      path: 'assets/translations', // Path to your translation files
      fallbackLocale: Locale('bn', 'BD'), // Fallback locale
      child: MyApp(),
    ),
  );
}