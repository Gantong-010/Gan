import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/coffee_title_item.dart';
import 'models/coffeeshop.dart';
class ShopPage extends StatefulWidget {
 const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}
class _ShopPageState extends State<ShopPage> {
   //add coffee to cart
    void addToCart(int index){
      Provider.of<CoffeeShop>(context,listen:false).addItemToCart(index);

      //let user know it add been successfully added
      showDialog(
        context: context, 
        builder: (context) =>const AlertDialog(
          backgroundColor: Color.fromARGB(255, 166, 122, 106),
         title: Text('Successfuly added to cart'),
       )
     );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('COFFEE SHOP',
        style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 30,
         ),
        ),
         centerTitle: true,
        backgroundColor: Colors.brown,
        ),
        body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            //เอ็กแพลน 
        const Padding(
           padding:EdgeInsets.symmetric(horizontal: 24),
              child: Text('Coffee & Bread',style: TextStyle(fontSize: 16),),
            ),
              // divider
        const Padding(
              padding:EdgeInsets.symmetric(horizontal: 24),
              child: Divider(),
            ),
            //Expanded
             Expanded(
              child: Consumer<CoffeeShop>(
                builder: (context,value,child){
                 return ListView.builder(
                  itemCount: value.shop.length,
                  padding:const EdgeInsets.all(10),
                  itemBuilder: (context,index){
                    return Coffeetitle(
                      name: value.shop[index][0],
                      price: value.shop[index][1],
                      imagePath: value.shop[index][2],
                      onPressed: () => addToCart(index),
                  );
                 },
               );
              }
             ),
            ), 
          ],
        ),
      ),
    );
  }
}