import 'package:coffee_shop/components/bottom_nav_bar.dart';
import 'package:coffee_shop/const.dart';
import 'package:coffee_shop/pages/shop_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigate bottom bar
  int selectedIndex = 0;
  navigateBottom(int index){
      setState(() {
        selectedIndex = index;
      });
  }
  List<Widget> pages = [
    //shop page
    ShopPage(),

    //cart page
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNav(onTabChange: (index) => navigateBottom(index),),
      body: pages[selectedIndex],
    );
  }
}
