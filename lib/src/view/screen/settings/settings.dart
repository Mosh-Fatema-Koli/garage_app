
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_app/src/view/widgets/colors.dart';
import 'package:garage_app/src/view/widgets/k_text.dart';
import 'package:get/get.dart';

class SettingsPages extends StatelessWidget {
  const SettingsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BrandColors.colorButton,
        title: KText(text: "সেটিংস",color: BrandColors.backgroundColor,),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Gap(10),
            Container(
              height: 150,
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 50,
                    ),
                    Gap(10),
                    KText(text: "Mr. XXX XX",fontSize: 16,color: BrandColors.colorButton,)
                  ],
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: KText(text: "প্রোফাইল",),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 20,)),
              ),
            ),
            Card(
              child: ListTile(
                title: KText(text: "প্রোফাইল",),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 20,)),
              ),
            ),
            Card(
              child: ListTile(
                title: KText(text: "প্রোফাইল",),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 20,)),
              ),
            ),
            Card(
              child: ListTile(
                title: KText(text: "প্রোফাইল",),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 20,)),
              ),
            ),
            Card(
              child: ListTile(
                title: KText(text: "প্রোফাইল",),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 20,)),
              ),
            ),
            Card(
              child: ListTile(
                title: KText(text: "প্রোফাইল",),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 20,)),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
