import 'package:floating_frosted_bottom_bar/app/frosted_bottom_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:garage_app/src/view/screen/history/history.dart';
import 'package:garage_app/src/view/screen/home/home.dart';
import 'package:garage_app/src/view/service/route/route.dart';
import 'package:garage_app/src/view/widgets/colors.dart';
import 'package:garage_app/src/view/widgets/k_text.dart';

class navBarPage extends StatefulWidget {
  const navBarPage({Key? key,}) : super(key: key);


  @override
  State<navBarPage> createState() => _navBarPageState();
}

class _navBarPageState extends State<navBarPage>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;

  final List<Color> colors = [
    Colors.white,
    Colors.white,

  ];

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 2, vsync: this);
    tabController.animation!.addListener(
          () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FrostedBottomBar(
        opacity: 1,
        sigmaX:10,
        sigmaY: 10,
         bottomBarColor: BrandColors.colorButton,
        child: TabBar(
          unselectedLabelColor: BrandColors.greyColor,
          labelColor: BrandColors.greyColor,
          dividerColor: BrandColors.greyColor,
          indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
          controller: tabController,
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.white, width: 4),
            insets: EdgeInsets.fromLTRB(16, 0, 16, 8),
          ),

          tabs: [
            TabsIcon(
                title: "হোম",
                color: currentPage == 0 ? colors[0] : Colors.white),
            TabsIcon(
                title: "হিসাব",
                color: currentPage == 1 ? colors[1] : Colors.white),

          ],
        ),
        borderRadius: BorderRadius.circular(500),
        duration: const Duration(milliseconds: 800),
        hideOnScroll: true,
        body: (context, controller) => TabBarView(
          controller: tabController,
          dragStartBehavior: DragStartBehavior.down,
          physics: const BouncingScrollPhysics(),
          children: [
            HomePage(),
            HistoryPage()

          ],

        ),
      ),
    );
  }
}

class TabsIcon extends StatelessWidget {
  final Color color;
  final double height;
  final double width;
  final String title;

  const TabsIcon(
      {Key? key,
        this.color = Colors.green,
        this.height = 60,
        this.width = 50,
        required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Center(
        child: KText(
         text: title,fontSize: 16,
          color: color,
        ),
      ),
    );
  }
}