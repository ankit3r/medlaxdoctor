import 'package:flutter/material.dart';
import 'package:medlaxdoctor/pages/LoginPage.dart';
import 'package:medlaxdoctor/pages/SignupPage.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 120,
            margin: const EdgeInsets.only(top: 90,left: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),    color: Colors.red,),
            child: const Center(child: Text("MED LAX",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 20),)),
          ),
          const Spacer(),
          SizedBox(height:300,child: const Image(image:  AssetImage("assets/images/doctor1.png"))),
          SizedBox(
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red.shade700,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))
              )
              ,child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  const Text("MED LAX",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),),
                  const SizedBox(height: 10),
                  const Text("Manage your practice on the go",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,),),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [SizedBox(
                    width: 150,
                    height: 55,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                    ), onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        }, child: const Text("LOGIN",style: TextStyle(color: Colors.black))),
                  ),SizedBox(
                    width: 150,
                    height: 55,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()),
                          );
                        }, child: const Text("REGISTER"
                            ,style: TextStyle(color: Colors.yellow))),
                  ),],),
                  const SizedBox(height: 20),
                  const Text("Find a Doctors?",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                      fontSize: 16,),),
                  const SizedBox(height: 20),
                ],
              ),
            ),),
          )
        ],
      ),
    );
  }

}