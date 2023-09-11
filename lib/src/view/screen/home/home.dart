
import 'package:flutter/material.dart';
import 'package:garage_app/src/view/screen/home/component/vegicle_list.dart';
import 'package:garage_app/src/view/screen/localization.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
 HomePage({super.key});
  final LanguageController languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('Mr. XXXX'),
            ),
            ListTile(
              title: const Text('Home'),

            ),
            ListTile(
              title: const Text('Business'),

            ),
            ListTile(
              title: const Text('School'),

            ),
          ],
        ),
      ),
      appBar: AppBar(
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