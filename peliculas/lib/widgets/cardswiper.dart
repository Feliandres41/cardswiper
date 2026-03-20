
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_providers.dart';
import 'package:provider/provider.dart';


class Cardswiper extends StatelessWidget{
  const Cardswiper({super.key});

  @override
  Widget build(BuildContext context) {
    final peliculas = Provider.of<MoviesProviders>(context);
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/details');
      },
      child: SizedBox(
      
        width: double.infinity,
        height: size.height*0.3,
        // color: Colors.yellow,
        child: Swiper(
        pagination: SwiperPagination(margin: EdgeInsetsGeometry.all(1),),
        autoplay: true,
        itemCount: peliculas.movie.length,
        layout: SwiperLayout.DEFAULT,
        itemWidth: size.width*0.6,
        itemHeight: size.height*0.9,
        
        itemBuilder: (_, int index) {
          return FadeInImage(
            placeholder: AssetImage('assets/gato.png'), 
            image: NetworkImage('https://image.tmdb.org/t/p/w400${peliculas.movie['results'][index]['poster_path']}'),
            fit: BoxFit.contain,
            );
        },)
         
      ),
    );
  }
}