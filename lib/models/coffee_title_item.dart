import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Coffeetitle extends StatelessWidget {
  final String name;
 final String price;
 final String imagePath;
 void Function()? onPressed;

  Coffeetitle({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.onPressed
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration:BoxDecoration(color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12)),
        margin:const EdgeInsets.only(bottom: 10),
        padding:const EdgeInsets.symmetric(vertical: 25,horizontal: 10),
        child: ListTile(
          title: Text(name),
          leading: Image.asset(imagePath),
          trailing: MaterialButton(
            color: Colors.brown[100],
            onPressed: onPressed,
            child: Text ('\฿'+price,
            style:const TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold
            ),
            ),
          )
        ),
      ),
    );
  }
}