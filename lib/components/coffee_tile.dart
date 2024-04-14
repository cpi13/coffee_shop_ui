import 'package:flutter/material.dart';

import '../model/coffee.dart';
class CoffeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onTap;
  final Widget icon;
   CoffeTile({Key? key,required this.coffee,
     required this.icon,
     required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12.0)
      ),
      child: ListTile(
        title:Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(
          icon: icon,
          onPressed: onTap,
        ),
      ),
    );
  }
}
