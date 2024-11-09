import 'package:flutter/material.dart';

class Historydetials extends StatelessWidget {
  const Historydetials({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('shipping details',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            Center(
              child: SizedBox(
                width: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/MQTR3.jpeg')),
              ),
            ),
            const SizedBox(height: 20,),
                 const Text("Shipping Address",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                 ),),
                 const SizedBox(height: 20,),
            const Text("To sinan,",style: TextStyle(
              fontSize: 16,
            ),),
            const Text("abdc addresss kochi,eranakulam 688967",
            style: TextStyle(
              fontSize: 16,
            ),),
            Text("Date : 9th November 2024"),
            const SizedBox(height: 50,),
            const Text('Beats Studio Pro',style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),),
            const SizedBox(height: 5,),
            const Text('Catogary : headphone',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height: 40,),
        
       
         
            const Text('Quantity : 1000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
        const SizedBox(height: 10,),
               const Text('Total Price : 35000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
            const SizedBox(height: 50,),
              
          ],
        ),
      ),
    );
  }
}