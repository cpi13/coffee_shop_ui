import 'package:flutter/material.dart';

import 'coffee.dart';
class CoffeeShop extends ChangeNotifier{
  //coffee for sale list
  List<Coffee> _shop = [
    Coffee(name: 'Long Black',
        price: '${43}',
        imagePath: 'assets/icons/hot-coffee (1).png'),

    Coffee(name: 'Latte',
        price: '${30}',
        imagePath: 'assets/icons/latte.png'),

    Coffee(name: 'Espresso',
        price: '${28}',
        imagePath: 'assets/icons/espresso.png'),

    Coffee(name: 'Iced Coffee',
        price: '${40}',
        imagePath: 'assets/icons/ice-coffee.png'),

  ];
    //get the coffee
    List<Coffee> get getCoffee => _shop;

    //user cart
    List<Coffee>  userCart = [];

    //add items to the cart
    void add(Coffee coffee){
      userCart.add(coffee);
      notifyListeners();
    }

    //remove items from the cart
    void removeCoffee(Coffee coffee){
      userCart.remove(coffee);
      notifyListeners();
    }


}