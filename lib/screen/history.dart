import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warehouse_manag/screen/historydetials.dart';
import 'package:warehouse_manag/widgets/widget.dart';

class ShippingHistory extends StatelessWidget {
  const ShippingHistory({super.key});

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        flexibleSpace: Column(
          children: [
            SizedBox(
              height: 65,
            ),
            Text("Shipping history",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(

                    decoration: InputDecoration(
                      suffixIcon: Icon(Iconsax.search_status),
                      hintText: 'Search ',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Historydetials()));
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
