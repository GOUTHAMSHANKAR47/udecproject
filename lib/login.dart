import 'package:flutter/material.dart';

import 'homepage.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  var formkey = GlobalKey<FormState>();
  var showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login with validation"),
      ),
      body: Form(
          key: formkey,
          child: Column(
            children: [
              Text(
                "loginpage",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.icecream_sharp),
                    suffixIcon: Icon(Icons.account_tree),
                    labelText: "user",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                    hintText: "username",
                  ),
                  validator: (username) {
                    if (username!.isEmpty || !username.contains('@')) {
                      return 'enter a valid email';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.ice_skating_outlined),
                      suffixIcon:
                          IconButton(onPressed: () {
                            setState(() {
                              if(showpass){
                                showpass = false;
                              }else{
                                showpass =true;
                              }
                            });
                          }, icon: Icon(showpass == true ? Icons.visibility_off :Icons.visibility)),
                      labelText: "pass",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)),
                      hintText: "password"),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 8) {
                      return 'not valid pass';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Homepage()));
                    } else {
                      return null;
                    }
                  },
                  child: Text("login"))
            ],
          )),
    );
  }
}
