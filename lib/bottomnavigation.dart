import 'package:flutter/material.dart';
import 'package:project1/loginpage.dart';
import 'package:project1/main.dart';
import 'package:project1/bookmark.dart';
import 'package:project1/mainpage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
class bottomnav extends StatefulWidget {
  const bottomnav({Key? key}) : super(key: key);

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {

  PageController _pageController = PageController();
  int _currentIndex = 0;
  var children = [
    moviepage(),
    MyApp(),
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
            icon: Icon(Icons.bookmark),
            title: Text("Bookmark"),
            selectedColor: Colors.teal,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Account"),
            selectedColor: Colors.teal,
          ),


        ],
      ),

    );
  }
}
