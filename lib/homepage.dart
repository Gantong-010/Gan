import 'package:ex2/bottom_nav_bar.dart';
import 'package:ex2/cartpage.dart';
import 'package:ex2/shoppage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  // navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  } 

  // pages
  final List<Widget> _pages = [
    //shop page
      ShopPage(),

    //cart page
      CartPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}