import 'dart:async';

import 'package:flutter/material.dart';
import 'package:udecproject/second.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Loginpage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///body as text in center
      // body: Center(
      //   child: Text(
      //     "myapp",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
      //     color: Colors.blueGrey),),),
      ///body as icon in center
      // body: Center(child: Icon(Icons.account_tree_outlined,size: 80,color: Colors.amber,),),
      ///body as column /multichild widget
      body: Container(
        // color: Colors.cyanAccent,
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/93d47c57994699.59ebbadfb2e93.jpg"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              //Icon(Icons.account_tree_outlined,size: 80,color: Colors.amber,),
              // Image(image: AssetImage("assets/icons/ic_launcher.png"),),
              // Image(
              //   image: NetworkImage(
              //       "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/93d47c57994699.59ebbadfb2e93.jpg"),
              //   height: 200,
              //   width: 200,
              // ),
              Image(
                image: AssetImage("assets/images/babiyaoologo.jpeg"),
                height: 200,
                width: 200,
              ),

              Text(
                "BABIYAAPP",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontStyle: FontStyle.italic),
              )
            ],
          ),
        ),
      ),
    );
  }
}
