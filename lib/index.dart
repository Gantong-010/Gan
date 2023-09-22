import 'package:flutter/material.dart';
import 'homepage.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key ? key}):super(key:key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  // ignore: unused_field
  final PageController _pages = PageController(initialPage: 0);
  int currentIndex = 0;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body:Container(
        padding:const EdgeInsets.only(left: 50,right: 50,bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             // images
             SizedBox(
            height: 350,
            child: Image.asset('lib/images/coffee-shop.png'),
          ),
          const SizedBox(height: 20,),
          Text(
            'Brew Day',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.brown[700],
              fontSize: 30,
              ),
          ),
          const SizedBox(height: 10),
        const  Text('How do you like your coffee?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.brown,
           ),
          ),
          const SizedBox(height: 35,),
          GestureDetector(onTap:(){ 
            Navigator.pushReplacement(context, 
            MaterialPageRoute(builder: (_)=>const HomePage()));
            },
             child: Container(
               margin:const EdgeInsets.only(bottom: 10),
               padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(12),
                ),
              child:const Center(
                child: Text("Enter Shop",
                style: TextStyle(color: Colors.white,fontSize: 20,),
                ),
              ),
             ),
           )
         ],
        ),
      ) ,
    );
  }
}