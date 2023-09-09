
import 'package:flutter/material.dart';
import 'package:garage_app/src/view/screen/localization.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
 HomePage({super.key});
  final LanguageController languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'), // 'tr' function for translation
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('hello'), // Translate the text using 'tr' function

          ],
        ),
      ),
    );
  }
}