import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/colors.dart';

class SettingTapBar extends StatefulWidget {
  const SettingTapBar({super.key});

  @override
  State<SettingTapBar> createState() => _SettingTapBarState();
}

class _SettingTapBarState extends State<SettingTapBar>
    with TickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: _tabs.length, vsync: this);
    _tabcontroller.animateTo(1);
  }

  static List<Widget> _tabs = [
    CustomText(
      text: "Company Info",
      weight: FontWeight.w500,
      size: 13,
    ),
    Tab(child: CustomText(text: "Payments", weight: FontWeight.w500, size: 13)),
    Tab(child: CustomText(text: "Team", weight: FontWeight.w500, size: 13)),
    Tab(
      child: CustomText(
          text: "Desktop and MobileApp", weight: FontWeight.w500, size: 13),
    ),
  ];

  static const List<Widget> _views = [];

  @override
  Widget build(BuildContext context) {
    return Container(
       
      child: TabBar(
        
        indicatorWeight: 2,
        indicatorColor: Colors.blue,
       indicatorSize: TabBarIndicatorSize.tab ,
        tabs: _tabs,
        isScrollable: true,
        padding: EdgeInsets.only(left: 0, right: 0) ,
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        controller: _tabcontroller,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 15),
       
      ),
    );
  }
}


