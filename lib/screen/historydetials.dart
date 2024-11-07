import 'package:flutter/material.dart';

class Historydetials extends StatelessWidget {
  const Historydetials({super.key});

Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shipping details',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/MQTR3.jpeg')),
              ),
            ),
            SizedBox(height: 20,),
                 Text("Shipping Address",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                 ),),
                 SizedBox(height: 20,),
            Text("To sinan,",style: TextStyle(
              fontSize: 16,
            ),),
            Text("abdc addresss kochi,eranakulam 688967",
            style: TextStyle(
              fontSize: 16,
            ),),
            SizedBox(height: 50,),
            Text('Beats Studio Pro',style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),),
            SizedBox(height: 5,),
            Text('Catogary : headphone',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 40,),
        
       
         
            Text('Quantity : 1000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
        SizedBox(height: 10,),
               Text('Price : 35000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
            SizedBox(height: 50,),
              
          ],
        ),
      ),
    );
  }
}