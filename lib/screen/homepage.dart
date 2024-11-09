import 'package:flutter/material.dart';
import 'package:warehouse_manag/screen/dashbord.dart';
import 'package:warehouse_manag/screen/history.dart';
import 'package:warehouse_manag/screen/liststock.dart';
import 'package:warehouse_manag/screen/profile.dart';
import 'package:warehouse_manag/widgets/widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
             Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  child: Image.asset('assets/images/profile.png'),
                ),
                SizedBox(width: 20,),
                Text(
                  "Hey, sinan",
                  style: style(),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ShippingHistory()));
                  },
                  child: SizedBox(
                    width: 180,
                    height: 180,
                    child: Card(
                      color: Colors.white,
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Orders",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey,
                            ),),
                            const Text("Checking",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 20,
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Image.asset('assets/images/container.png',width: 88,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashbord()));
                    },
                    child: SizedBox(
                    width: 180,
                    height: 180,
                    child: Card(
                      color: Colors.white,
                      elevation: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Dash",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey,
                            ),),
                            const Text("Board",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 20,
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Image.asset('assets/images/dashboard.png',width: 88,),
                            ),
                          ],
                        ),
                      ),
                    ),
                                    ),
                  ),
                
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30,
              top: 50),
              child: Text("recent activities",style: TextStyle(
                letterSpacing: 0,
                fontWeight: FontWeight.w900,
                fontSize: 19
              ),),
            ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ListPage()));
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300]!,
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer

                  )
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/images/checklist.png',width: 55,),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("TOTAL STOCK",style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),),
                      Text("75 Packages",style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w900,
                        fontSize: 19,
                      ),),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_forward_ios_outlined),
                  )
                ],
              ),
            ),
          ),
        ),  
        const Padding(
              padding: EdgeInsets.only(left: 30,
              top: 50),
              child: Text("catogary",style: TextStyle(
                letterSpacing: 0,
                fontWeight: FontWeight.w900,
                fontSize: 19
              ),),
            ),   
            Row(
              children: [
                imageContainer(
                    imagePath:
                        'assets/images/laptop-screen.png',
                    name: 'Laptops'),
                const Spacer(),
                imageContainer(
                    imagePath: 'assets/images/iphone.png',
                    name: 'Mobiles'),
                // 
              ],
            ),
            Row(
              children: [
                imageContainer(
                    name: 'HeadPhones', imagePath: 'assets/images/headphones.png'),
                imageContainer(
                    name: 'Speakers',
                    imagePath: 'assets/images/speaker.png')
              ],
            ),
            Row(
              children: [
                imageContainer(
                    name: 'Televisions',
                    imagePath: 'assets/images/led-tv.png'),
                imageContainer(
                    name: 'Smart Watches',
                    imagePath: 'assets/images/fitness-tracker.png'),
              ],
            ),
             const SizedBox(
              height: 20,
            ),
           
          ],
        ),
      ),
    );
  }
}
