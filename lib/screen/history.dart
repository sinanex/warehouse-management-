import 'package:flutter/material.dart';
import 'package:warehouse_manag/screen/historydetials.dart';
import 'package:warehouse_manag/widgets/widget.dart';

class ShippingHistory extends StatelessWidget {
  const ShippingHistory({super.key});

  @override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Transaction",style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18
      ),),),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Historydetials()));
          },
          child: Column(
            
            children: [
              itemContainer(),
              itemContainer(),
              itemContainer(),
              itemContainer(),
              itemContainer(),
              itemContainer(),
              itemContainer(),
            ],
          ),
        ),
      )
    );
  }
}
