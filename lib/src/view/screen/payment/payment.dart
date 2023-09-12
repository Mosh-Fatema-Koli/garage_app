
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_app/src/view/service/route/route.dart';
import 'package:garage_app/src/view/widgets/button.dart';
import 'package:garage_app/src/view/widgets/colors.dart';
import 'package:garage_app/src/view/widgets/k_text.dart';
import 'package:garage_app/src/view/widgets/text_box_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(0),
        child: AppBar(
          backgroundColor: BrandColors.colorButton,
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            Gap(20),
            RadioCustom(),
            Gap(20),
            GlobalButtons.buttonWidget(text: "সম্পন্ন",color: BrandColors.colorButton,textColor: BrandColors.colorWhite,
                press: (){
                  Get.offAllNamed(bottomBarScreen);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(

                      backgroundColor: BrandColors.backgroundColor,
                      content: KText(text: "যোগ করা সম্পন্ন হয়েছে",color:  BrandColors.colorButton,),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                }
            ),
            Gap(20),
          ],
        ),
      ),

    );
  }
}

