import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "welcome bois",
          style: TextStyle(
              fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),

    );
    // TODO: implement build
    throw UnimplementedError();
  }

}