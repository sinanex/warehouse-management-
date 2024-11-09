import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warehouse_manag/screen/liststock.dart';
import 'package:warehouse_manag/screen/profile.dart';
import 'package:warehouse_manag/widgets/widget.dart';

class AddstockPage extends StatefulWidget {
  const AddstockPage({super.key});

  @override
  State<AddstockPage> createState() => _AddstockPageState();
}
TextEditingController datecontroller = TextEditingController();
class _AddstockPageState extends State<AddstockPage> {
  final List<String> items = [
    'Laptop',
    'Mobile',
    'Headphone',
    'Television',
    'Speakers',
    'Smart Watches',
  ];
  String? newValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("add stock",style: style(),),
      ),
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
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text(
                  "Add image",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
             contextfeild(hindtext: 'customer name'),
             contextfeild(hindtext: 'colour'),
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 390,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton(
                     
                      isExpanded: true,
                      hint: const Text('Catogary'),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: datecontroller,
                  onTap: (){
                    date();
                  },
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: 'date',
                   border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(Iconsax.calendar_1)
                  ),
                ),
              ),
              contextfeild(hindtext: 'Price'),
           contextfeild(hindtext: 'description'),
              const SizedBox(
                height: 30,
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
                        MaterialPageRoute(builder: (context) => const ListPage()));
                  },
                  child: const Text(
                    "Conform",
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
  
  Future<void> date()async {

   DateTime? _selectedDate = await showDatePicker(context: context,
    initialDate: DateTime.now(),
     firstDate: DateTime(2000), 
     lastDate: DateTime(2100));
     if(_selectedDate!=null){
      setState(() {
        datecontroller.text = _selectedDate.toString().split(" ")[0];
      });
     }
  }
}
