
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
      child: Column(
        children: [
          Row(
            spacing: 10,
            children: [
              FadeInImage(
                placeholder: AssetImage('assets/gato.png'), 
                image: NetworkImage('https://picsum.photos/200/250'),
                height: 150,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   
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
          SizedBox(
            height: 30,
          ),
          Text('SIPNOSIS (ME COPIE DE CARLOS)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(
            height: 10,
          ),
          Text('Terminator 2: El juicio final (1991) sigue a un cyborg T-800 enviado desde el futuro para proteger a un adolescente John Connor y a su madre, Sarah, de un T-1000, una máquina de metal líquido más avanzada enviada para asesinar al futuro líder de la resistencia humana y asegurar la victoria de las máquinas. ', textAlign: TextAlign.justify,),

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