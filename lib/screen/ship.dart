import 'package:flutter/material.dart';
import 'package:warehouse_manag/screen/homepage.dart';
import 'package:warehouse_manag/screen/orderDetils.dart';
import 'package:warehouse_manag/widgets/widget.dart';

class Shppingpage extends StatelessWidget {
  const Shppingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("shipping",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
            Center(
              child: Container(
                width: 150,
                child: Image.asset('assets/images/location.png'),
              ),
            ),
                        const SizedBox(height: 50,),
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Text("recipent info",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
           ),),
         ),
SizedBox(height: 15,),
              contextfeild(hindtext: 'customer name'),
               contextfeild(hindtext: 'email or phone'),
               contextfeild(hindtext: 'Location'),
              contextfeild(hindtext: 'shipping address'),
              contextfeild(hindtext: 'quantity'),
             
               const SizedBox(height: 20,),
           
            const SizedBox(height: 15,),
          
            
            SizedBox(height: 10,),
          
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderdetilsPage()));
                },
                child: Center(
                  child: Container(
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black
                    ),
                    child: const Center(
                      child: Text("next",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                    ),
                  ),
                ),
                
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

