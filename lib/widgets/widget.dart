import 'package:flutter/material.dart';
import 'package:warehouse_manag/screen/profile.dart';

Widget imageContainer({required String name, required String imagePath}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(13.0),
        child: Card(
          color: Colors.white,
          child: Container(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(imagePath)),
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
          ),
        ),
      ),
      Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      )
    ],
  );
}

Widget contextfeild({required String hindtext}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10)),
        label: Text(hindtext),
      ),
    ),
  );
}

Widget itemContainer() {
   return Padding(
     padding: const EdgeInsets.all(2.0),
     child: Container(
      height: 80,
      decoration: BoxDecoration(
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 40,
            child: Image.asset('assets/images/MQTR3.jpeg',width: 50,),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Beat Studio pro",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),),
              Text("Nov 8th 2024",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey,
              ),),
            ],
          ),
          SizedBox(width: 50,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
     
            children: [
              Text("Completed",style: 
              TextStyle(
                color: Colors.green[700],
                fontWeight: FontWeight.bold,
              ),)
            ],
          )
        ],
      ),
     ),
   );
}


Widget cont (){
  return GestureDetector(
   
    child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Image.asset('assets/images/MQTR3.jpeg'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Beat Studio Pro",style: style(),),
                    Text("Qty : 1000",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),),
                  ],
                ),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            ),
            width: double.infinity,
            height: 100,
           color: Colors.white,
          ),
  );
}