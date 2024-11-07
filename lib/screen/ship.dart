import 'package:flutter/material.dart';
import 'package:warehouse_manag/screen/homepage.dart';
import 'package:warehouse_manag/widgets/widget.dart';

class Shppingpage extends StatelessWidget {
  const Shppingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                child: SizedBox(
                  width: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/MQTR3.jpeg')),
                ),
              ),
          const SizedBox(height: 20,),
            const Center(
              child: Text('Beats Studio Pro',style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 28,
              ),),
            ),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Catogary : headphone',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 10,),
                  Text("Color : White", style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 18),),
                ],
              ),
            ),
            const SizedBox(height: 20,),
              contextfeild(hindtext: 'customer name'),
              contextfeild(hindtext: 'shipping address'),
              contextfeild(hindtext: 'quantity'),
              contextfeild(hindtext: 'price'),
              const Padding(
                padding: EdgeInsets.only(left: 20,top: 20,bottom: 20),
                child: Text("Total Price : 0",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              ),
          
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Homepage()));
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
                      child: Text("confom order",style: TextStyle(
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

