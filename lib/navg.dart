import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:study_app/Home.dart';
import 'package:study_app/buy.dart';
import 'package:study_app/login.dart';
import 'package:study_app/view.dart';

class Menu extends StatefulWidget {

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _mycurrentIndex=0;
  List pages=[Home(),Login(),Buy(),View()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: pages[_mycurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.lime,
          onTap: (index){
            print(index);
            setState(() {
              _mycurrentIndex=index;
            });
          },
          currentIndex: _mycurrentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.pink,size: 25,),
              label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.login,color: Colors.purple,size: 25,),
              label: "Login"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart_rounded,color: Colors.redAccent,size: 25,),
              label: "Buy"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_list,color: Colors.lightBlue,size: 25,),
                label: "VIEW"
            ),

          ],//items
        ),
      ),

    );//
  }
}
