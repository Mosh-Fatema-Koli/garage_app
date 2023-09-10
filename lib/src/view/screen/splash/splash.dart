
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_app/src/view/service/route/route.dart';
import 'package:garage_app/src/view/widgets/colors.dart';
import 'package:garage_app/src/view/widgets/k_text.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
   Future.delayed(Duration(seconds: 5), () => Get.toNamed(homeScreen));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
 
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [

                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/images/logo.png',height: 100,width: 100,),
                  ),
                ),
              ],
            ),
          ),

          Column(
            children: [
              Center(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    backgroundColor: BrandColors.colorButton,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 50),

              KText(text: 'VERSION 1.0.1',color: BrandColors.colorButton,fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 20),
            ],
          ),


        ],
      ),
    );
  }
}