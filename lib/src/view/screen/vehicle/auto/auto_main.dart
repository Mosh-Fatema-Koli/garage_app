import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_app/src/view/widgets/button.dart';
import 'package:garage_app/src/view/widgets/colors.dart';
import 'package:garage_app/src/view/widgets/k_text.dart';
import 'package:garage_app/src/view/widgets/text_box_field.dart';

class AutoMainPage extends StatelessWidget {
  const AutoMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: KText(text: "সিএনজি",color: Colors.white,fontSize: 18,),
        elevation: 0,
        actions: [
          Gap(10),




        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KText(text: "সিএনজি নম্বর : "),
              CustomTextField(),
              Gap(10),
              KText(text: "ড্রাইভারের নাম : "),
              CustomTextField(),
              Gap(10),
              KText(text: "ড্রাইভারের ফোন নম্বর : "),
              CustomTextField(),
              Gap(10),
              KText(text: "ড্রাইভারের NID : "),
              CustomTextField(),
              Gap(10),
              KText(text: "ড্রাইভারের ঠিকানা : "),
              CustomTextField(),
              Gap(10),
              KText(text: "ভাড়া শুরুর সময় : "),
              CustomTextField(),
              Gap(10),
              KText(text: "ভাড়া শেষ করার সময় : "),
              CustomTextField(),
              Gap(20),
              GlobalButtons.buttonWidget(text: "চালিয়ে যান",color: BrandColors.colorButton,textColor: BrandColors.colorWhite)


            ],
          ),
        ),
      ),


    );
  }
}
