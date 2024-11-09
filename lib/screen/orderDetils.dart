import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warehouse_manag/screen/profile.dart';

class OrderdetilsPage extends StatelessWidget {
  const OrderdetilsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "order details",
          style: style(),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 77, 225, 203)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Image.asset(
                          'assets/images/calendar.png',
                          width: 70,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "2024",
                              style: textstyl(),
                            ),
                            Text(
                              "November 8",
                              style: textstyl(),
                            ),
                            Text(
                              "11:58 Am",
                              style: textstyl(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 10,
                  ),
                  SizedBox(width: 20,),
                  Text("Eranakulam",style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Container(width: 2,height: 20,color: Colors.grey,),
        
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(Iconsax.location,color: Colors.red,),
                ),
                SizedBox(width: 20,),
                Text("manjeri",style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "shipping info",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "sinan",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "+91 8089309204",
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          "abcd address manjeri,malappuram 676122",
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
           SizedBox(
            width: double.infinity,
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Service Fee",style: style(),),
                    Text("Late Night Surcharge",style: style(),),
                    Text("Moving Cart",style: style(),),
                    Text("Discound",style: style(),),
                  ],
                ),
                Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("500",style: style(),),
                    Text("2000",style: style(),),
                    Text("1000",style: style(),),
                    Text("1000",style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                  ],
                ),
              ],
            ),
           ),
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Divider(
                     
             ),
            
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Text("Totol",style: style(),),
               SizedBox(width: 100,),
               Text("200000",style: style(),),
             ],
           ),
           SizedBox(height: 20,),
            Center(
              child: Container(
                        width: 250,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black
                        ),
                        child: const Center(
                          child: Text("place order",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                        ),
                      ),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle textstyl() {
  return const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
}

