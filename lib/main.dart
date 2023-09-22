import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'index.dart';
import 'models/coffeeshop.dart';

void main(){runApp(const MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> CoffeeShop(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IndexPage(),
      ),
    );
  }
}