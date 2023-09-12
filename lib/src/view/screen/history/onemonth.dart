import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garage_app/src/view/widgets/colors.dart';
import 'package:garage_app/src/view/widgets/k_text.dart';

class OnemonthReportPage extends StatelessWidget {
  const OnemonthReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        SizedBox(
          height: 500,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => ListTile(

              title: Row(
                children: [
                  KText(text: "রিকশা",),
                  Gap(30),
                  KText(text: "অর্ধেক দিনের ভাড়া",),
                  Gap(30),
                  KText(text: "নগদ",),
                ],
              ),
              trailing: KText(text: "৳ 70",),
            ),),
        ),
        Divider(
          color: BrandColors.colorButton,
          height: 2,
        ),
        ListTile(

          title: KText(text: "মোট",),
          trailing: KText(text: "৳ 7000",),
        ),


      ],
    );
  }
}
