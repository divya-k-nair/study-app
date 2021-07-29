import 'package:flutter/material.dart';

class Buy extends StatefulWidget {

  @override
  _BuyState createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("BUY"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.book_online,color: Colors.indigoAccent,size: 40,),
                    hintText: "Coursename",
                    labelText: "Coursename",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.timelapse,color: Colors.indigoAccent,size: 40,),
                      hintText: "Period",
                      labelText: "period",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.attach_money,color: Colors.indigoAccent,size: 40,),
                      hintText: "Price",
                      labelText: "price",
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
                    color: Colors.lime,
                    onPressed: (){

                  },
                    child: Text("BUY",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  ),
                )
              ],//children
            ),
          ),
        ),
      ),
    );
  }
}
