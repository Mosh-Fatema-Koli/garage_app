
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_app/src/view/screen/history/onemonth.dart';
import 'package:garage_app/src/view/screen/history/todays.dart';
import 'package:garage_app/src/view/widgets/colors.dart';
import 'package:garage_app/src/view/widgets/k_text.dart';
import 'package:get/get.dart';

class HistoryPage extends StatelessWidget {
 HistoryPage({super.key});

 @override
 Widget build(BuildContext context) {
   return DefaultTabController(
     length: 2,
     child: Scaffold(
         body: NestedScrollView(
           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
             return <Widget>[
               new SliverAppBar(
                 backgroundColor: BrandColors.backgroundColor,
                 title: Center(child: KText(text: "হিসাব",color: BrandColors.colorButton,fontSize: 20,)),
                 pinned: true,
                 floating: true,
                 bottom: TabBar(
                   dividerColor:BrandColors.colorButton ,
                   indicatorColor: BrandColors.colorButton,
                   tabs: [
                     Tab(child:KText(text: "আজ",)),
                     Tab(child:KText(text: "এক মাস",)),

                   ],
                 ),
               ),
             ];
           },
           body: TabBarView(
             children: <Widget>[
               TodaysReportPage(),
               OnemonthReportPage()
             ],
           ),
         )),
   );
 }
}



