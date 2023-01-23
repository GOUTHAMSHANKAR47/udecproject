

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));


}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      ///body as text in center
      // body: Center(
      //   child: Text(
      //     "myapp",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
      //     color: Colors.blueGrey),),),
      ///body as icon in center
      // body: Center(child: Icon(Icons.account_tree_outlined,size: 80,color: Colors.amber,),),
      ///body as column /multichild widget
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            //Icon(Icons.account_tree_outlined,size: 80,color: Colors.amber,),
            Image(image: AssetImage("assets/icons/ic_launcher.png"),width: 300,height: 300,),
        Text( "BABIYAAPP",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blueGrey,fontStyle: FontStyle.italic),)],),
      ),
    );

  }
}