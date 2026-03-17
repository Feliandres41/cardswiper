


import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
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
            itemCount: 10,
            itemBuilder: (_, index) => 
            _MovieS()
            ,
          ))
        ],
      ),
    );
  }
}

class _MovieS extends StatelessWidget {
  const _MovieS();

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 130,
        height: 190,
        
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/details', arguments: 'the movie');
            },
            child:FadeInImage(placeholder: AssetImage('assets/gato.png'), image:NetworkImage("https://picsum.photos/200/250")),
          ),
           
          Text("Pelicula arruruu"),
          ],
        ),
    );
  }
}

