import 'package:flutter/material.dart';
import 'package:medlaxdoctor/pages/OtpPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Create your free\nMedlax profile free",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 22,
                  ),
                ),
                Column(children: [
                  const SizedBox(
                    height: 300,
                    child:
                    Image(image: AssetImage("assets/images/doctor2.png")),
                  ),
                  Stack(children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: Colors.red.shade700,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            const TextField(
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Enter your mobile number",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 15),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(fontSize: 16),
                                children: [
                                  TextSpan(
                                      text: "By continuing, you agree to our\n"),
                                  TextSpan(
                                      text: "Term & condition.",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline)),
                                  TextSpan(text: " and "),
                                  TextSpan(
                                      text: "Privacy Policy.",
                                      style: TextStyle(
                                          decoration: TextDecoration.underline)),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              width: double.infinity,
                              height: 55,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow.shade400,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const OtpPage()),
                                  );
                                },
                                child: const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 40, right: 40, top: 7, bottom: 7),
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                                fontSize: 25,
                              ),
                            ),
                          )),
                    )
                  ],)
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
