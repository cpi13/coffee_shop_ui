import 'package:coffee_shop/model/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/coffee_tile.dart';
import '../model/coffee.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add to cart function
  void addToCart(Coffee coffee){
    //add to cart
    Provider.of<CoffeeShop>(context,listen: false).add(coffee);

    // alert user to know that it added
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("Successfully added to Cart"),
        backgroundColor: Colors.deepPurple,
      );
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context, value, child) {
      return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
        children: [
            //heading message
            const Text('How would you like your coffee? ' ,style: TextStyle(fontSize: 24),),
            const SizedBox(height: 30,),
            //list of coffee to buy
            Expanded(child: ListView.builder(
              itemCount: value.getCoffee.length,
                itemBuilder: (context,index){

                  //get individual coffee
                   Coffee eachCoffee = value.getCoffee[index];

                  //get the tile of coffee
                   return CoffeTile(coffee:eachCoffee,
                     icon: Icon(Icons.add),
                     onTap: ()=>addToCart(eachCoffee),);


                }))
        ],
      ),
          ));
    },);
  }
}
