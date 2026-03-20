
import 'dart:math';

import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget{
  Map peliX ={};
  DetailsScreen({
    super.key,
    required this.peliX
    });

  @override
  Widget build(BuildContext context) {
      // final String titleMovie = ModalRoute.of(context)?.settings.arguments as String ?? 'no-movie';
    return Scaffold(
      
      body: 
          CustomScrollView(
            slivers: [
              // _CustomAppBar(titleMovie: titleMovie,),
              _CustomAppBar(peli: peliX),
              SliverList(delegate: SliverChildListDelegate([_PosterMovie(peli: peliX,)]))
            ],
          )
    );
  }
}



// ignore: must_be_immutable
class _PosterMovie extends StatelessWidget{
  Map peli={};
  _PosterMovie({
    required this.peli
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            spacing: 10,
            children: [
              FadeInImage(
                placeholder: AssetImage('assets/gato.png'), 
                image: NetworkImage('https://image.tmdb.org/t/p/w500${peli['backdrop_path']}'),
                // height: 10,
                width: 200,
                ),
                SizedBox(
                  // width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                     
                      Text('${peli['title']}',style: TextTheme.of(context).bodyMedium, 
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5,),
                      Text('${peli['original_title']}'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star,color: Colors.yellow,),
                          Text('${peli['vote_average']}')
                        ],
                      ),
                      
                      
                    ],
                  ),
                )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text('SIPNOSIS', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(
            height: 10,
          ),
          // Text('Terminator 2: El juicio final (1991) sigue a un cyborg T-800 enviado desde el futuro para proteger a un adolescente John Connor y a su madre, Sarah, de un T-1000, una máquina de metal líquido más avanzada enviada para asesinar al futuro líder de la resistencia humana y asegurar la victoria de las máquinas. ', textAlign: TextAlign.justify,),
          Text('${peli['overview']}'),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: ListView.builder(itemBuilder: (context, index) {
              return Container(
                width: 112,
                height: 200,
                margin: EdgeInsets.all(20),
                
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(20),
                      child: FadeInImage(placeholder: AssetImage('assets/gato.png'), image: NetworkImage('https://picsum.photos/200/250'),
                      fit: BoxFit.cover,
                      
                      ),
                    ),
                    Text('Maria el Bros')
                  ],
                ),
              );
            } , itemCount: 4,
            scrollDirection: Axis.horizontal,
            ),
          )
          
            
        ],
      ),
    );
  }
}



class _CustomAppBar extends StatelessWidget{
  // final String titleMovie;
  Map peli ={};
  _CustomAppBar ({required this.peli});
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black26,
          child: Text(
            peli['title'],
            style: TextStyle(
              fontSize: 18,
              color: Colors.white
            ),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/icono.png'), 
          image: NetworkImage('https://image.tmdb.org/t/p/w500${peli['backdrop_path']}'),
          fit: BoxFit.cover,
        ),
        
      ),
    );
  }

}
// class _InfoMovie extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Row(

//     )
//   }
// }