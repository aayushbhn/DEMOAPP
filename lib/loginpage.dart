import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loginpage/Home_page.dart';
import 'package:loginpage/signup.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool _obscureText = true;
  bool changeIcon= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 116,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/ic_logo2.png',
                    width: 120,
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Log In ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff0189A5),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(

                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline_sharp,
                      color: Color(0xff0189A5),
                    ),
                    labelText: 'Username',
                    hintText: ' Username',
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Color(0xff0189A5)),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(

                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Color(0xff0189A5),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState((){
                          _obscureText = !_obscureText;
                          changeIcon=!changeIcon;
                        });

                      },
                      child: changeIcon? Icon(Icons.visibility,color: Color(0xff0189A5),): Icon(Icons.visibility_off,color: Color(0xff0189A5),),

                    ),
                    labelText: 'Password',
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Color(0xff0189A5)),
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Text('Forgot Password ?',style: TextStyle(
                      color: Colors.grey,
                    ),),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 135.0),
                child: ElevatedButton(
                  onPressed: (){
                    print('hello');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                  child: Ink(
                    decoration: BoxDecoration(
                        color: Color(0xff0189A5), borderRadius: BorderRadius.circular(24)),

                    child: Container(

                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all( 24),
                    child: Text("Don't have an account ?",style: TextStyle(
                      color: Colors.grey,


                      fontSize: 16,
                    ),),
                  ),
                ],
              ),

              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Register();
                      },),);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Text("Sign up ",style: TextStyle(
                        color: Color(0xff0189A5),


                        fontSize: 16,
                      ),),
                    ),
                  ),
                ],
              ),
            ],

          ),
        ),
      ),
    );
  }
}
