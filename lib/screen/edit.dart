import 'package:flutter/material.dart';
import 'package:warehouse_manag/screen/liststock.dart';
import 'package:warehouse_manag/widgets/widget.dart';

class Editpage extends StatefulWidget {
  const Editpage({super.key});

  @override
  State<Editpage> createState() => _EditpageState();
}

class _EditpageState extends State<Editpage> {
  @override
 final List<String> items = [
    'Laptop',
    'Mobile',
    'Headphone',
    'Television',
    'Speaker',
    'Smart Watches'
  ];
  String? newValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/MQTR3.jpeg',
                    width: 200,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text(
                  "Edit image",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              contextfeild(hindtext: 'Product Name'),
              contextfeild(hindtext: 'Colour'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 390,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton(
                     
                      isExpanded: true,
                      hint: Text('Catogary'),
                      value: newValue,
                      items: items.map((String item) {
                        return DropdownMenuItem<String>(
                  
                          value: item,
                        
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          newValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              contextfeild(hindtext: 'Quantity'),
              contextfeild(hindtext: 'Price'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      height: 100,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'description'
                        ),
                      ),
                    ),
                  ),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
             
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListPage()));
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
