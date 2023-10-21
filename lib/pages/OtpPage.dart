import 'package:flutter/material.dart';
import 'package:medlaxdoctor/pages/HomePage.dart';
class OtpPage extends StatelessWidget{
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(actions: [TextButton(onPressed: (){}, child: const Text("Hepl?"))]),
     body: SingleChildScrollView(
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               const SizedBox(height: 20),
           const Icon(Icons.lock_open,color: Colors.red,size: 120,),
           const Icon(Icons.password,color: Colors.grey,size: 120,),
           const Text("OTP Verification",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
               const SizedBox(height: 20),
           const Text("Enter the OTP you received to ",style: TextStyle(fontSize: 16,color: Colors.grey),),
           const Text("+91 971708XXXX",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
               const SizedBox(height: 30),
               OtpForm(),
               const SizedBox(height: 20),
           const Text("Didn\'t received any code?",style: TextStyle(fontSize: 16,color: Colors.grey),),
               const SizedBox(height: 10),
           const Text("Resend a New Code",style: TextStyle(fontSize: 16,color: Colors.red),),
               const SizedBox(height: 20),
           SizedBox(
             width: 350,
             height: 55,
             child: ElevatedButton(style: ElevatedButton.styleFrom(
               backgroundColor: Colors.yellow,
             ), onPressed: (){
               Navigator.pushReplacement(
                 context,
                 MaterialPageRoute(
                     builder: (context) => const HomePage()),
               );
             }, child: const Text("VERIFY OTP",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22))),
           ),


         ]),
       ),
     ),
   );
  }
  Widget _otpTextField() {
    return Container(
      width: 50,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15),
          counter: Offstage(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(4, (index) => FocusNode());
    _controllers = List.generate(4, (index) => TextEditingController());
    _focusNodes[0].requestFocus();
  }

  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          4,
              (index) => SizedBox(
            width: 65,
            height: 65,
            child: Card(
              child: Center(
                child: TextField(
                  controller: _controllers[index],
                  focusNode: _focusNodes[index],
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
                    counter: const Offstage(),
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                  onChanged: (value) {
                    if (value.length == 1 && index < 3) {
                      _focusNodes[index].unfocus();
                      _focusNodes[index + 1].requestFocus();
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
