import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier{
  //list of item on sale 
  final List _shop =[
    //[name,price,imagePath,color]
    ["Espresso","40.0","lib/images/expresso.png"],
    ["latte","50.0","lib/images/latte.png"],
    ["Coffee","20.0","lib/images/coffee.png"],
    ["Tea hot","30.0","lib/images/tea.png"],
    ["Orange Jam Bread","10.0","lib/images/bread-01.png"],
    ["Strawberry Jam Bread","10.0","lib/images/bread-02.png"],
    ["Chocolate Bread","10.0","lib/images/bread-03.png"],
    ["Milk Butter Bread","10.0","lib/images/bread-04.png"],
  ];

  //List of cart item
  List _cart = [];
  get shop => _shop;
  get cart => _cart; 

  void addItemToCart(int index){
    _cart.add(_shop[index]);
    notifyListeners();
  }
  
  void removeItemFromCart(int index){
    _cart.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal (){
    double totalPrice = 0;
    for (int i = 0; i < _cart.length; i++){
      totalPrice += double.parse(_cart[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}