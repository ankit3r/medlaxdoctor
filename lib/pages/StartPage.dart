import 'package:flutter/material.dart';
import 'package:medlaxdoctor/pages/IntroPage.dart';

class StartPage extends StatelessWidget{
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 120,
            margin: const EdgeInsets.only(top: 90,left: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),    color: Colors.red,),
            child: const Center(child: Text("MED LAX",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 20),)),
          ),
          const Spacer(),
          const Image(image:  AssetImage("assets/images/doctor.jpg")),
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
                  const Text("Patients are looking for doctors like you",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,),),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow.shade400,
                    ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IntroPage()),
                          );
                        }, child: const Text("GETTING STARTED"
                        ,style: TextStyle(color: Colors.black))),
                  ),
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