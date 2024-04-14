import 'dart:ffi';

import 'package:coffee_shop/components/coffee_tile.dart';
import 'package:coffee_shop/model/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/coffee.dart';
class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFrom(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen: false).removeCoffee(coffee);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: (context,value,child){
      return SafeArea(
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            children: [
            //Heading
            Text("Your Cart",style: TextStyle(fontSize: 20),),
            Expanded(child:
            ListView.builder(
              itemCount: value.userCart.length,
                itemBuilder: (context,index){
              Coffee eachCoffee = value.userCart[index];
              return CoffeTile(coffee: eachCoffee,
              icon: const Icon(Icons.delete,),
                onTap: () => removeFrom(eachCoffee));
            })),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.brown
                ),
                child: Center(child: Text('Pay Now',style: TextStyle(color: Colors.white),),
                ),
              ),
        ],
      ),
          ));
    });
  }
}
