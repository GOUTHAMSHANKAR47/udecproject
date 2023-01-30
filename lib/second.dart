import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login here"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              "login",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(CupertinoIcons.increase_indent),
                labelText: "user",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                hintText: "username",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.ice_skating),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                  hintText: "password",
                  labelText: "pass"),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("sign  - in")),
          Text("not a user register here"),
        ],
      ),
    );
  }
}
