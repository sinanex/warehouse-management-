import 'package:flutter/material.dart';
import 'package:warehouse_manag/screen/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
            Text("personal information",style: style(),),
            Text('name : muhammed sinan',style: style(),),
            Text('Email : ms4730435@gmail.com',style: style(),),
         SizedBox(height: 300,),
            Center(
              child: ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              }, child: Text("Logout",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),),style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),),
            )
          ],
        ),
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