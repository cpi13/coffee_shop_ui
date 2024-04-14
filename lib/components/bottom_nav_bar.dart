import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class MyBottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
   MyBottomNav({Key? key,required this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey[400],
        activeColor: Colors.grey[700],
        tabBorderRadius: 24,
        tabBackgroundColor: Colors.grey.shade300,
        tabActiveBorder:Border.all(color: Colors.white) ,
          tabs: const [
          GButton(
          icon: Icons.home,
          text: 'Shop',),
        GButton(
          icon: Icons.shopping_bag_outlined,
          text: 'Cart',)
      ]),
    );
  }
}
