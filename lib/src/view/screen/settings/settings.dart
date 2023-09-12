
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
            // Container(
            //   height: 130,
            //   width: Get.width,
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 20),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         CircleAvatar(
            //           radius: 50,
            //           backgroundImage: NetworkImage("https://as2.ftcdn.net/v2/jpg/02/29/75/83/1000_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg"),
            //         ),
            //         Gap(10),
            //
            //       ],
            //     ),
            //   ),
            // ),
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
