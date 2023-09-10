
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_app/src/view/widgets/k_text.dart';

class CNGMainPage extends StatelessWidget {
  const CNGMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: KText(text: "সিএনজি",color: Colors.white,fontSize: 18,),
        elevation: 0,
        actions: [
          Gap(10),




        ],

      ),


    );
  }
}
