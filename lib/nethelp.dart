import 'dart:convert';
import 'getmovies.dart';
import 'package:http/http.dart' as http;

class NetworkHelper{
  String url = 'https://api.themoviedb.org/3/tv/popular?api_key=cfd63eea5dfc656a38d33ae3f9c154cb&language=en-US&page=1';
  Future<Welcome> getMovieDetail() async{
    var movieListModel;
    var response =await http.get(Uri.parse(url));
    print(response.body);
    if(response.statusCode == 200){
      var data = response.body;
      var jasonMap = jsonDecode(data);
      print(movieListModel);
      movieListModel =
          Welcome.fromJson(jasonMap);
      print(movieListModel);
    }
    return movieListModel;
  }
}