import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/coffeeshop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('My Cart',
        style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 30,
         ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
        ),
      body: Consumer<CoffeeShop>(
        builder: (context, value, child) {
          return Column(
            //list cart item
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cart.length,
                  padding:const EdgeInsets.all(12),
                  itemBuilder:(context,index){
                    return Padding(
                      padding:const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListTile(
                            leading: Image.asset(value.cart[index][2],
                            height: 36,
                            ),
                            title: Text(value.cart[index][0]),
                            subtitle: Text('\฿'+value.cart[index][1]),
                            trailing: IconButton(
                              icon:const Icon(Icons.delete,color: Colors.brown,),
                              onPressed: () => Provider.of<CoffeeShop>
                              (context,listen: false).removeItemFromCart(index),
                          ),
                       ),
                      ),
                    );
                  }
                ),
              ),
                  //total+ paynow
                  Padding(
                    padding: const EdgeInsets.all(36.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[400],
                        borderRadius: BorderRadius.circular(8),
                        ),
                        padding:const EdgeInsets.all(24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [const
                               Text('Total Price'),
                                const SizedBox(height: 4,),
                               Text('\฿'+value.calculateTotal()),
                              ],
                            ),
                            //button pay now
                            GestureDetector(
                              onTap: (){
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                                decoration: BoxDecoration(
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.circular(12),
                                  ),
                                  child:const Center(
                                    child:Text('Pay Now',
                                    style: TextStyle(color: Colors.white),
                              ),
                           ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }    
}