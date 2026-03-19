

import 'package:flutter/material.dart';
import 'package:peliculas/screens/screens.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: AppBarTheme(backgroundColor: A,),
      // home: HomeScreen(),
      // detalle:DetailsScreen()
      initialRoute: '/',
      routes: {
        '/':(context)=>HomeScreen(),
        '/details':(context)=>DetailsScreen()
      },
      

      theme: ThemeData.dark().copyWith(
        appBarTheme: 
          AppBarTheme(
            backgroundColor: Colors.red,
          ),
      )
    );
  }
}

