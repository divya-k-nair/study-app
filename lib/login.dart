import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("LOGIN"),
        ),
        body:SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,color: Colors.lightGreen,size: 40,),
                    hintText: "Emailid:",
                    labelText: "Emailid:",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  controller: pass,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.visibility_off_rounded,color: Colors.lightGreen,size: 40,),
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.lightGreen,
                    onPressed: (){
                      var getEmail=email.text;
                      var getPass=pass.text;
                      print(getEmail);
                      print(getPass);

                  },
                    child: Text("LOGIN",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                  ),
                ),
                ),
              ],//children
            ),
          ),
        ) ,
      ),
    );
  }
}
