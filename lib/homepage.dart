import 'package:flutter/material.dart';


class content extends StatelessWidget {
  var name=[
    'Er. Aayush Bhandari',
    'Dr. Nikita Khadka',
    'Er. Aashutosh Neupane',
    'Er. Kaushal Bahadur Kunwar',
  ];
  var job=[
    'Computer Engineer',
    'Head Nurse',
    'Flutter Developer',
    'Web Developer',
  ];
  var images=[
    'assets/ic_photo.jpg',
    'assets/ic_photo.jpg',
    'assets/ic_logo.png',
    'assets/ic_logo2.png',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F7FF),
      appBar: AppBar(
        title: Text('HomePage'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 130, //from figma design
                width: 400, //takes the full width
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),//Change the radius of the container
                  color: Colors.white,

                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:17.0, left: 12,right: 13),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 28,
                            //  backgroundColor: Colors.blue,
                            backgroundImage: AssetImage('${images[index]}'),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${name[index]}'),
                              Container(
                                  color: Color(0xff48BF94).withOpacity(0.19),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text('${job[index]}'),
                                  )),
                              Text('13:00 PM - 15:00 PM'),
                            ],
                          )


                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('View Profile'),
                          SizedBox(width: 5,),
                          CircleAvatar(
                            radius: 13,
                            backgroundColor: Colors.teal,
                            child: Icon(
                              Icons.arrow_right_alt_outlined, size: 20,
                              color: Colors.white,
                            ),
                          )

                        ],
                      )
                    ],
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}