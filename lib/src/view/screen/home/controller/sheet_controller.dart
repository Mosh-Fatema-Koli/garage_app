import 'package:flutter/material.dart';
import 'package:garage_app/src/view/widgets/colors.dart';
import 'package:garage_app/src/view/widgets/k_text.dart';
import 'package:get/get.dart';

class BottomSheetController extends GetxController{

  void showBottomSheetCNG(BuildContext context) {
    showModalBottomSheet(
      elevation: 0,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        // Create the content for your rounded bottom sheet here
        return Container(
          decoration: BoxDecoration(
            color: BrandColors.colorButton,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)), // Adjust the radius as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: KText(text: "অর্ধেক দিনের ভাড়া",color: Colors.white,),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.white,),),
                ),
                ListTile(
                  title: KText(text: "পুরো দিনের ভাড়া",color: Colors.white,),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.white,),),
                ),

                SizedBox(height: 10),
                // Add more content here
              ],
            ),
          ),
        );
      },
    );
  }

  void showBottomSheetAuto(BuildContext context) {
    showModalBottomSheet(
      elevation: 0,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        // Create the content for your rounded bottom sheet here
        return Container(
          decoration: BoxDecoration(
            color: BrandColors.colorButton,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)), // Adjust the radius as needed
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: KText(text: "অর্ধেক দিনের ভাড়া",color: Colors.white,),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.white,),),
                ),
                ListTile(
                  title: KText(text: "পুরো দিনের ভাড়া",color: Colors.white,),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.white,),),
                ),
                ListTile(
                  title: KText(text: "আপনার অটো চার্জ করুন",color: Colors.white,),
                  trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.white,),),
                ),

                SizedBox(height: 10),
                // Add more content here
              ],
            ),
          ),
        );
      },
    );
  }





}