import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name=[
    'All',
    'Popular',
    'Movies',
    'Series',
    'Anime',
    'Documentary',
    'Indian',
    'Korean',
    'Romantic',
    'Comedy',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100.0),
          child: Container(
            height: 40,
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Container(
                  height: 10, //from figma design
                  width: 120, //takes the full width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),//Change the radius of the container
                    color: Colors.grey,

                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0, left: 2,right: 3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('${name[index]}'),
                            )),

                      ],
                    ),
                  ),


                );
              },
            ),
          ),
        ),
      );

  }
}