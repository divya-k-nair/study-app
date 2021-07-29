import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController name=TextEditingController();
  TextEditingController mob=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController state=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("HOME"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box,color: Colors.redAccent,size: 40,),
                    hintText: "Name",
                    labelText: "Name ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_call,color: Colors.redAccent,size: 40,),
                    hintText: "Mobileno:",
                    labelText: "Mobileno: ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,color: Colors.redAccent,size: 40,),
                    hintText: "Emailid:",
                    labelText: "Emailid: ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.place,color: Colors.redAccent,size: 40,),
                    hintText: "State",
                    labelText: "State",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.purpleAccent,
                    onPressed: (){
                      var getName=name.text;
                      var getMob=mob.text;
                      var getEmail=email.text;
                      var getState=state.text;
                      print(getName);
                      print(getMob);
                      print(getEmail);
                      print(getState);

                  },
                    child: Text("SCHEDULE FREE CLASS",
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
        ),
      ),
    );
  }
}
