


import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10)),
          // Padding(padding: ),
          Text('peliculas de tijeras', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600 ),),
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
    return Container(
      width: 130,
      height: 190,
      color: Colors.deepOrange,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}

