import 'package:flutter/material.dart';

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
    padding: const EdgeInsets.all(10.0),
    child: Container(
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Image.asset('assets/images/MQTR3.jpeg'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Beats Studio pro",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Color : white",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Catogary : Headphone",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Quantity : 1000",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          )
        ],
      ),
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    ),
  );
}
