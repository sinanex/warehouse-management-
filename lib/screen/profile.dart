import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warehouse_manag/screen/history.dart';
import 'package:warehouse_manag/screen/login.dart';
import 'package:warehouse_manag/screen/orderDetils.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("profile",style: style(),),),
     body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            child: Image.asset('assets/images/profile.png',width: 100,),
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        
     
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Personal Details",style: style(),),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,                children: [
                    Text("Sinan",style: style(),),
                    SizedBox(height: 20,),
                    Text("ms4730435@gmail.com",style : TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),),
                  ],
                ),
              ),
              width: double.infinity,
              height: 110,
              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: ListTile(
                  title: Text("Edit profile"),
                  trailing: Icon(Iconsax.arrow_right),
                ),
              ),
                Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ShippingHistory()));
                  },
                  title: Text("Oders histroy"),
                  trailing: Icon(Iconsax.arrow_right),
                ),
              ),
                Card(
                child: ListTile(
                  title: Text("Support"),
                  trailing: Icon(Iconsax.arrow_right),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
          Center(
            child: TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            }, child: Text("sign out",style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),)),
          )
      ],
     ),

    );
  }
}
TextStyle style(){
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}