
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_app/src/view/screen/home/component/vegicle_list.dart';
import 'package:garage_app/src/view/screen/localization.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
 HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),
         title: Center(child: Text("গ্যারেজ হালখাতা")),
        elevation: 0,
     backgroundColor: Colors.green,
        actions: [

          IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
          SizedBox(
            width: 10,
          )
        ],
      ),

      body: ListView(
        children: [

          Stack(
            children: [
              Container(
                height: Get.height,
                width: Get.width,
                color: Colors.green,
              ),



              Positioned(
                  top: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                    ),
                height: Get.height,
                width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                              height: Get.height,
                              child: VehicleListPage())
                        ],
                      ),
                    ),
      

              ))

            ],
          )
        ],
      )
    );
  }
}