import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'const.dart';
import 'getmovies.dart';
import 'nethelp.dart';
class moviepage extends StatefulWidget {
  const moviepage({Key? key}) : super(key: key);

  @override
  State<moviepage> createState() => _moviepageState();
}

class _moviepageState extends State<moviepage> {
  var itemCount;
  Future<Welcome>? movieData;
  Future<Welcome> getList() async{
    NetworkHelper networkHelper = NetworkHelper();
    var movies =await networkHelper.getMovieDetail();
    return movies;

  }
  @override
  void initState() {
    movieData = getList();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: FutureBuilder<Welcome>(
              future: movieData,
              builder: (BuildContext context,snapshot) {
                if(snapshot.hasData) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${snapshot.data!.results![1].originalName}',
                        style: kStyleTopic,

                      ),
                      SizedBox(
                        height: 10,

                      ),
                      Text('Release Date : ${snapshot.data!.results![1].firstAirDate}'),
                      SizedBox(
                        height: 10,
                      ),

                      Row(
                        children: [
                          Image(
                            width: 200,
                            height: 400,
                            image: NetworkImage('https://image.tmdb.org/t/p/w500/''${snapshot.data!.results![1].posterPath}'),
                          ),
                          // Container(
                          //   width: 200,
                          //   height: 400,
                          //
                          //   color: Colors.red,
                          // ),
                          SizedBox(width: 30,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Rating', style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),),
                              Container(
                                height: 100,
                                width: 50,
                                color: Colors.yellow,
                              ),

                            ],


                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Description', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 10,),
                          Text(
                            '${snapshot.data!.results![1].overview}',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                    ],

                  );
                }
                return LinearProgressIndicator();
              }
          ),

        ),
      ),

    );
  }
}
