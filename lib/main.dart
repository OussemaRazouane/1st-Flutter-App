import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first App",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,)
            ),
          centerTitle: true,
          backgroundColor:const Color.fromARGB(255, 217, 45, 103),
        ),
        drawer: Drawer(
          backgroundColor:const Color.fromARGB(255, 165, 113, 130),
          child: Center(child:RichText(
            text:const TextSpan(
                children:<TextSpan> [
                  TextSpan(text: 'Welcome', style: TextStyle(fontSize: 20.0),),
                  TextSpan(text: 'to', style: TextStyle(fontSize: 17.0,color:Color.fromARGB(255, 9, 88, 117))),
                  TextSpan(text: 'Bleach', style: TextStyle(fontSize: 20.0)),
                ] ,),
            textAlign: TextAlign.center,
            ),
        ),),
        body:const Center( child:Image(image:AssetImage("./../assets/bleach.gif")),),
        
      ),
    );
  }
}
