

import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pantalla home Screen',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },icon: Icon(Icons.search,color: Colors.white,),
          )
        ],
      ),
      body: Column(
        children: [
              Cardswiper(),
              MovieSlider()
        ]
        
      ),
    );
  }
}