import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warehouse_manag/screen/login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 120,
              ),
              const Center(
                child: Text(
                  "Create Account!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              const Center(
                child: Text(
                  "Let's Create Account Together",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(height: 80,),
               const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Your Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(30)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Name',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Email Address",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(30)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Address',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
               const Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Text("Password",
                             style: TextStyle(
                  fontWeight: FontWeight.bold
                             ),),
               ),
               Container(
                decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(30)
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Iconsax.eye_slash),
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50,),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 360,
                    height: 60,
                    child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ), child: const Text("Sign Up",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),),
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    width: 360,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                       borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 55,right: 55),
                      child: Row(
                        children: [
                          Image.network('https://static.vecteezy.com/system/resources/previews/013/948/549/non_2x/google-logo-on-transparent-white-background-free-vector.jpg'),
                          const Spacer(),
                          const Text('Sign In with Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LoginPage()));
                  },
              child: const Row(
                children: [
                  SizedBox(width: 80,),
                  Text("Already have an account?  "),
                  Text('sign in',style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}