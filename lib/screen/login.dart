import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warehouse_manag/screen/bottomNavigation.dart';
import 'package:warehouse_manag/screen/register.dart';

class LoginPage extends StatefulWidget {
 LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 bool passwordHide = true;
 IconData icon = Iconsax.eye_slash;

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
                height: 150,
              ),
              const Center(
                child: Text(
                  "Hello Again!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Center(
                child: Text(
                  "Welcome back you've been missed",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 100,),
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
              const SizedBox(height: 30,),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: passwordHide,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(icon:  Icon(icon),onPressed: (){
                        setState(() {
                          passwordHide = !passwordHide;
                          if(passwordHide == true){
                             icon = Iconsax.eye_slash;
                          }else{
                            icon = Iconsax.eye_slash5;
                          }
                        });
                      },),
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
                    height: 65,
                    child: ElevatedButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Navigationpage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ), child: const Text("Sign In",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),),
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    width: 360,
                    height: 65,
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
            Row(
              children: [
                const SizedBox(width: 80,),
                const Text("don't have an account?  "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const RegisterPage()));
                  },
                  child: const Text('sign up',style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                )
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}