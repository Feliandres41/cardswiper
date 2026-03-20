


import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_providers.dart';
import 'package:provider/provider.dart';

class Ejemplo extends StatelessWidget{
  const Ejemplo({super.key});

  @override
  Widget build(BuildContext context) {
    final peliculas = Provider.of<MoviesProviders>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => 
                Container(
                  width: double.infinity,
                  height: 200,
                child: Text('${peliculas.movie['results'][index]['title']}'),
                ), 
                separatorBuilder: (_,_) => const Divider(), 
                itemCount: peliculas.movie.length),
            )
          ],
        ),
      ),
    );
  }
}