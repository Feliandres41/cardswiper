
import 'package:flutter/material.dart';
class DetailsScreen extends StatelessWidget{

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final String titleMovie = ModalRoute.of(context)?.settings.arguments as String ?? 'no-movie';
    return Scaffold(
      
      body: 
          CustomScrollView(
            slivers: [
              _CustomAppBar(titleMovie: titleMovie,),
              SliverList(delegate: SliverChildListDelegate([_PosterMovie()]))
            ],
          )
    );
  }
}

class _PosterMovie extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/gato.png'), 
            image: NetworkImage('https://picsum.photos/200/250'),
            height: 150,
            ),
            Column(
              children: [
                Padding(padding: EdgeInsetsGeometry.only(left: 170)),
                Text('movie title',style: TextStyle(fontSize: 20),),
                Text('title original'),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    Text('puntuacion')
                  ],
                ),
                
              ],
            )
        ],
      ),
    );
  }
}



class _CustomAppBar extends StatelessWidget{
  final String titleMovie;
  const _CustomAppBar ({required this.titleMovie});
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
            titleMovie,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white
            ),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/icono.png'), 
          image: NetworkImage('https://picsum.photos/200/250'),
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