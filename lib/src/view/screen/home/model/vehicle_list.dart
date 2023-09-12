class VehicleModel{

  late String name;
  late String image;


  VehicleModel({
    required this.name,
    required this.image,
});

}


List<VehicleModel> vehicleList=
[
  VehicleModel(name: "সিএনজি", image:"assets/images/cng.png"),
  VehicleModel(name: "অটো", image:"assets/images/auto.png"),
  VehicleModel(name: "অটো রিকশা", image:"assets/images/auto_riksha.jpg"),
  VehicleModel(name: "রিকশা", image:"assets/images/rikshaw.png"),
  VehicleModel(name: "ভ্যান", image:"assets/images/van.png"),
  VehicleModel(name: "কভার ভ্যান", image:"assets/images/covervan.png"),
  VehicleModel(name: "ট্রাক", image:"assets/images/truck_container.png"),
  VehicleModel(name: "বাস", image:"assets/images/bus.png"),
  VehicleModel(name: "গাড়ী", image:"assets/images/car.png"),

];