import 'package:flutter/material.dart';

class View extends StatefulWidget {

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  TextEditingController name=TextEditingController();
  TextEditingController mob=TextEditingController();
  TextEditingController course=TextEditingController();
  TextEditingController price=TextEditingController();
  List sname=[];
  List cmob=[];
  List cname=[];
  List cprice=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("VIEW"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box,color: Colors.purple,size: 30,),
                    labelText: "name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: mob,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.add_call,color: Colors.purple,size: 30,),
                      labelText: "mobileno:",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: course,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.book_online,color: Colors.purple,size: 30,),
                    labelText: "Coursename",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: price,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.attach_money,color: Colors.purple,size: 30,),
                    labelText: "Price",
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
                    color: Colors.cyan,
                    onPressed: (){
                      var getName=name.text;
                      var getMob=mob.text;
                      var getCoursename=course.text;
                      var getPrice=price.text;
                      print(getName);
                      print(getMob);
                      print(getCoursename);
                      print(getPrice);
                      setState(() {
                        sname.add(getName);
                        cmob.add(getMob);
                        cname.add(getCoursename);
                        cprice.add(getPrice);
                        name.text="";
                        mob.text="";
                        course.text="";
                        price.text="";
                      });

                  },
                    child: Text("VIEW",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                      ),
                  ),
                ),
                ),
                ListView.builder(
                  itemCount: sname.length==null?0:sname.length,
                  shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.add_shopping_cart_rounded,color: Colors.indigo,size: 30,),
                          trailing: GestureDetector(
                            onTap: (){
                              print("delete clicked"+index.toString());
                              setState(() {
                                sname.removeAt(index);
                                cmob.removeAt(index);
                                cname.removeAt(index);
                                cprice.removeAt(index);
                              });
                            },
                              child: Icon(Icons.delete,color: Colors.indigo,size: 30,)),
                          title: Text(sname[index]),
                          subtitle: Text("mobileno:"+cmob[index].toString()+"\n"+"Coursename:"+cname[index]+"\n"+"Price:"+cprice[index].toString()),
                        ),
                      );

                    },)





              ],//children
            ),
          ),
        ),
      ),
    );
  }
}
