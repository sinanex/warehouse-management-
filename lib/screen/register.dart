import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warehouse_manag/screen/bottomNavigation.dart';
import 'package:warehouse_manag/screen/login.dart';
import 'package:warehouse_manag/widgets/widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
bool passwordHide = true;
 IconData icon = Iconsax.eye_slash;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  "Create Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Center(
                child: Text(
                  "Let's create account",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 100,),
             contextfeild(hindtext: 'name'),
              const SizedBox(height: 20,),
              contextfeild(hindtext: 'Email Address'),
              const SizedBox(height: 20,),
             
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
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
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
                    ), child: const Text("Sign Up",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),),
                  ),
                  const SizedBox(height: 30,),
                  Card(
                    color: Colors.white,
                    child: Container(
                      width: 360,
                      height: 65,
                      decoration: BoxDecoration(
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
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                const SizedBox(width: 80,),
                const Text("Already  have an account?  "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=> LoginPage()));
                  },
                  child: const Text('sign in',style: TextStyle(
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
