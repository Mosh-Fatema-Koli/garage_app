import 'package:flutter/material.dart';
import 'package:garage_app/src/view/screen/home/controller/sheet_controller.dart';
import 'package:garage_app/src/view/screen/home/model/vehicle_list.dart';
import 'package:garage_app/src/view/widgets/colors.dart';
import 'package:garage_app/src/view/widgets/k_text.dart';
import 'package:get/get.dart';

class VehicleListPage extends StatelessWidget {
  VehicleListPage({super.key});

  final BottomSheetController _bottomSheetController = Get.put(BottomSheetController());



  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: List.generate(vehicleList.length, (index) {

          return GestureDetector(
            onTap: (){

              if(index == 0){

                _bottomSheetController.showBottomSheetCNG(context);

              }else if(index == 1){
                _bottomSheetController.showBottomSheetAuto(context);

              }else if(index == 2){
                _bottomSheetController.showBottomSheetAutoRikshaw(context);

              }else if(index == 3){
                _bottomSheetController.showBottomSheetRikshaw(context);
              }else if(index == 4){
                _bottomSheetController.showBottomSheetRikshaw(context);
              }else if(index == 5){

              }else if(index == 6){

              }else if(index == 7) {

              }
              else{


              }
            },
            child: Card(
           shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
          ),
              elevation: 10,
               shadowColor: Colors.green,
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(child: Image.asset(vehicleList[index].image)),
                        Text(vehicleList[index].name,),
                      ]
                  ),
                ),
                )
            )
          );
        }
        )


    );
  }
}