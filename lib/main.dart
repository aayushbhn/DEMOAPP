import 'package:flutter/material.dart';
import 'package:loginpage/bottomnavigationpage.dart';
import 'package:loginpage/secondpage.dart';

import 'loginpage.dart';
void main(){
  runApp(loginpage());
}
class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigation()
    );
  }
}
