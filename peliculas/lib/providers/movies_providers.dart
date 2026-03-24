
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class MoviesProviders extends ChangeNotifier{
  final _key= '588c17fca35e0020c769fe84c3e1edfe';
  final String categoria ='/3/search/movie';

  MoviesProviders(){
    print('Movies providers inicializando');
    getOnDisplayMovies();
    //PRUEBA
    // getOnDisplayMovies(categoria);
    

  }

  Map<String,dynamic> movie={};
  Future<void> getOnDisplayMovies()async{

    print('getondisplaymovies');
    final String apikey = _key;
    final String language = 'es-mx';
    
    final url = Uri.http('api.themoviedb.org','/3/movie/now_playing', {
      'api_key':apikey,
      'language':language
    });

   final responde = await http.get(url);
   print(responde.body); 
   final datos = jsonDecode(responde.body);
   movie=datos;
   notifyListeners();
  }


//PRUEBA
  // Map<String,dynamic> movie={};
  // Future<void> getOnDisplayMovies(String categoria)async{

  //   print('getondisplaymovies');
  //   final String apikey = _key;
  //   final String language = 'es-mx';
    
  //   final url = Uri.http('api.themoviedb.org','/3/$categoria', {
  //     'api_key':apikey,
  //     'language':language
  //   });

  //  final responde = await http.get(url);
  //  print(responde.body); 
  //  final datos = jsonDecode(responde.body);
  //  movie=datos;
  //  notifyListeners();
  // }

  



  // Future<void> searchPeli() async{
  //   final String apikey = _key;
  //   final url = Uri.https(
  //     'api.themoviedb.org',
  //     '/3/search/movie',
  //     {
  //       'api_key':apikey,
  //       ''
  //     }
  //   );
  // }
}
