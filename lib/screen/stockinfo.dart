import 'package:flutter/material.dart';
import 'package:warehouse_manag/screen/edit.dart';
import 'package:warehouse_manag/screen/ship.dart';

class StockDetails extends StatelessWidget {
  const StockDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('stock details',style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
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
            Text('Beats Studio Pro',style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28,
            ),),
            SizedBox(height: 5,),
            Text('Catogary : headphone',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
           
            Text("Color : White", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
             SizedBox(height: 40,),
            Text('Beats Studio Pro- Wireless Bluetooth Noise Cancelling Headphones - Spatial Audio, USB-C, Up to 40H Battery Life, 10 min Fast Charge for 4H Battery Life, Apple & Android Compatible '),
            SizedBox(height: 20,),
        
            Text('Quantity : 1000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
        SizedBox(height: 10,),
               Text('Price : 35000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
            SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Shppingpage()));
                }, child: Text("shipping",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),),
              ),
               SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Editpage()));
                }, child: Text("Edit",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),),
              ),
            ],
          )
          ],
        ),
      ),
    );
  }
}