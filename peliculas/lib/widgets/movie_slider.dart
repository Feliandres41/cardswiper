


import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_providers.dart';
import 'package:peliculas/screens/details_screen.dart';
import 'package:provider/provider.dart';



class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final peliculas = Provider.of<MoviesProviders>(context);
    // peliculas
    return Container(
      width: double.infinity,
      height: 250,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(5)),
          // Padding(padding: ),
          Text("peliculas", style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
          Expanded(child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: peliculas.movie.length,
            itemBuilder: (_, index) {
              final peli = peliculas.movie['results'][index];
              return _MovieS(peli: peli);
            }
            ,
          ))
        ],
      ),
    );
  }
}

class _MovieS extends StatelessWidget {
  Map peli = {};
  _MovieS({
    required this.peli
  });
  @override
  Widget build(BuildContext context) {
    print(peli);
    // final peliculas = Provider.of<MoviesProviders>(context);
    return  Container(
      
        width: 130,
        height: 190,
        
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
          GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, '/details', arguments: 'the movie');
              Navigator.push(context, MaterialPageRoute(builder:
              (context) => DetailsScreen(peliX: peli),));
            },
            child:FadeInImage(placeholder: AssetImage('assets/gato.png'), image:NetworkImage("https://image.tmdb.org/t/p/w500${peli['backdrop_path']}")),
          ),
           
          Text('${peli['title']}'),
          
          ],
        ),
    );
  }
}

