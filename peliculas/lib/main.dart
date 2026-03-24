

import 'package:flutter/material.dart';
import 'package:peliculas/helpers/search.dart';
import 'package:peliculas/providers/movies_providers.dart';
import 'package:peliculas/screens/ejemplo.dart';
import 'package:peliculas/screens/screens.dart';
import 'package:provider/provider.dart';
void main()=>
  runApp(AppState());


class AppState extends StatelessWidget{
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ChangeNotifierProvider(create: (_)=> MoviesProviders())] 
    ,child: Myapp(),
    );
  }
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  

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
        '/search':(context)=>Search()
        // '/details':(context)=>DetailsScreen(peliX: {},)
      },
      

      theme: ThemeData.light().copyWith(
        appBarTheme: 
          AppBarTheme(
            backgroundColor: Colors.red,
          ),
          iconTheme: IconThemeData(
            color: Colors.white
          ), 
          iconButtonTheme: IconButtonThemeData(
            style:ButtonStyle(iconColor: WidgetStatePropertyAll(Colors.white))
          )
        
      )
    );
  }
}

