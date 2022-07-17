import 'package:flutter/material.dart';
import 'package:project1/bottomnavigation.dart';
import 'package:project1/loginpage.dart';
import 'package:project1/bookmark.dart';



void main(){
  runApp(loginpage());
}
class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: bottomnav()
    );
  }
}