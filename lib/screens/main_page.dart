import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onboarding/core/constants/colors_const.dart';
import 'package:onboarding/provider/main_page_provider.dart';
import 'package:onboarding/screens/accaunting_page.dart';
import 'package:onboarding/screens/home_page.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController?  _tabController;
  Color iconColor = ColorsConst.kiconColor;
  Color iconPressedColor = ColorsConst.kpressedIconColor;
  bool press = false;
  int currentIndex = 0;

  @override
  void initState() {
   
    super.initState();
     _tabController = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
         HomePage(),
          Container(color:Colors.blue),
          Container(color:Colors.red),
          AccountingPage(),
      ],),

      bottomNavigationBar: TabBar(
        controller: _tabController,
        labelColor: iconColor = iconPressedColor,
        unselectedLabelColor: ColorsConst.kiconColor,
        tabs: [
            Tab(icon: SvgPicture.asset('assets/icons/apps.svg',color: context.watch<MainPageProvider>().currentIndex ==0? iconPressedColor : Colors.grey,)),
            Tab(icon: SvgPicture.asset('assets/icons/calendar.svg',color: context.watch<MainPageProvider>().currentIndex ==1? iconPressedColor : Colors.grey,)),
            Tab(icon: SvgPicture.asset('assets/icons/comment.svg',color:context.watch<MainPageProvider>().currentIndex ==2? iconPressedColor : Colors.grey,)),
            Tab(icon: SvgPicture.asset('assets/icons/user.svg',color: context.watch<MainPageProvider>().currentIndex ==3? iconPressedColor : Colors.grey,)),
      ],
      onTap: (v){
       context.read<MainPageProvider>().checkPressed(v);
      },
      ),
    );
  }
}