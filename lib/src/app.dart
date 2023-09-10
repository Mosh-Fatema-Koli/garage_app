import 'package:flutter/material.dart';
import 'package:garage_app/src/view/screen/home/home.dart';
import 'package:garage_app/src/view/service/route/route.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: HomePage(),
      getPages: getPages,
      initialRoute: splashScreen,
      debugShowCheckedModeBanner: false,

    );
  }
}
