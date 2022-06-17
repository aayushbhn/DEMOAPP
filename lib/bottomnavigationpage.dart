import 'package:flutter/material.dart';
import 'package:loginpage/Home_page.dart';
import 'package:loginpage/loginpage.dart';

import 'package:loginpage/secondpage.dart';
import 'package:loginpage/thirdpage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}


class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  var children = [
    content(),
    secondpage(),
    thirdpage(),
    Homepage(),
  ];
  void _onChanged(int index){
    setState((){
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: children[_currentIndex],
      bottomNavigationBar: SalomonBottomBar(
        onTap: _onChanged,
        currentIndex: _currentIndex,
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.teal,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.message),
            title: Text("Message"),
            selectedColor: Colors.teal,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Cart"),
            selectedColor: Colors.teal,
          ),
          SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text('Account'),
            selectedColor: Colors.teal
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.white,
      //   onTap: _onChanged,
      //   currentIndex: _currentIndex,
      //
      //   items: [
      //
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home_filled),
      //       label: 'Home',
      //       backgroundColor: Colors.white,
      //
      //
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message),
      //       label: 'Message',
      //       backgroundColor: Colors.white,
      //
      //
      //
      //     ),
      //     // BottomNavigationBarItem(
      //     //   icon: Icon(Icons.person),
      //     //   label: 'User',
      //     //   backgroundColor: Colors.grey,
      //     //
      //     //
      //     //
      //     // ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart),
      //       label: 'Cart',
      //       backgroundColor: Colors.white,
      //
      //
      //
      //     ),
      //
      //
      //   ],
      // ),
    );

  }
}
