import 'package:garage_app/src/view/screen/home/home.dart';
import 'package:garage_app/src/view/screen/intro/into.dart';
import 'package:garage_app/src/view/screen/splash/splash.dart';
import 'package:garage_app/src/view/screen/vehicle/cng/cng_main.dart';
import 'package:get/get.dart';



const String splashScreen = "/splash-screen";
const String introScreen = "/intro_screen";
const String loginScreen = "/login_screen";
const String signupScreen = "/registration_screen";
const String forgetPassScreen = "/forget_password_screen";
const String changePassScreen = "/change_password_screen";

const String homeScreen = "/home_screen";
const String cngScreen = "/cng_screen";
const String autoScreen = "/auto_screen";
const String autoRikshawScreen = "/autoRikshaw_screen";
const String rikshawScreen = "/rikshaw_screen";
const String vanScreen = "/van_screen";
const String coverVanScreen = "/cover_van_screen";
const String truckScreen = "/truc_screen";
const String carScreen = "/car_screen";





List<GetPage> getPages = [

  GetPage(name: splashScreen, page: (() => SplashPage()),),
  GetPage(name: introScreen, page: (() => IntroPage()), ),
  // GetPage(name: loginScreen, page: () => LoginPage(), transition: Transition.fade,  ),
  // GetPage(name: signupScreen, page: (() => RegistrationPage()), transition: Transition.fade,),
  GetPage(name: homeScreen, page: () => HomePage(),),
  GetPage(name: cngScreen, page: () => CNGMainPage()),



];