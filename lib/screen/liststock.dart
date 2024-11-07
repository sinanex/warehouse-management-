import 'package:flutter/material.dart';
import 'package:warehouse_manag/screen/stockinfo.dart';
import 'package:warehouse_manag/widgets/widget.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        flexibleSpace: Column(
          children: [
            SizedBox(
              height: 75,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>StockDetails()));
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
