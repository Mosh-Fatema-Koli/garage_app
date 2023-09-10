import 'package:flutter/material.dart';
import 'package:garage_app/src/view/screen/home/model/vehicle_list.dart';
import 'package:garage_app/src/view/service/route/route.dart';
import 'package:get/get.dart';

class VehicleListPage extends StatelessWidget {
  const VehicleListPage({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        // Create the content for your bottom sheet here
        return Container(
          // Your bottom sheet content goes here
          child: Center(
            child: Text('This is the bottom sheet for index 1'),
          ),
        );
      },
    );
  }

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

                _showBottomSheet(context);

              }else if(index == 1){
                _showBottomSheet(context);

              }else if(index == 2){
                _showBottomSheet(context);

              }else if(index == 3){
                _showBottomSheet(context);
              }else if(index == 4){
                _showBottomSheet(context);
              }else if(index == 5){
                _showBottomSheet(context);
              }else if(index == 6){
                _showBottomSheet(context);
              }else if(index == 7) {
                _showBottomSheet(context);
              }
              else{
                _showBottomSheet(context);

              }
            },
            child: Card(
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