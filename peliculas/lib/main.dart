

import 'package:flutter/material.dart';
import 'package:peliculas/routers/rutaBaril.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: AppBarTheme(backgroundColor: A,),
      home: HomeScreen(),

      theme: ThemeData.light().copyWith(
        appBarTheme: 
          AppBarTheme(
            backgroundColor: Colors.blue,
          ),
      )
    );
  }
}

