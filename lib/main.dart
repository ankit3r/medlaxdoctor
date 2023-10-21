import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medlaxdoctor/pages/StartPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Med lax',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const StartPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: postData,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }




  Future<void> postData() async {
    final url = Uri.parse('http://apimedlax.cstechns.com/medlaxdoctor/medlaxdoctor.svc/medlaxlogin');
    // final data = {'MobileNo': '9981015846'};
    Map<String, String> data = {
      "MobileNo": '9981015846',
    };

    try {final response = await http.post(url, body: data,);
    print('${response.statusCode}');
      if (response.statusCode == 200) {
        print('Data posted successfully');
        print(response.body);
      } else {
        // Request failed, handle the error
        print('Failed to post data: ${response.statusCode}');
      }
    } catch (e) {
      // An error occurred, handle the exception
      print('Error: $e');
    }
  }




}
