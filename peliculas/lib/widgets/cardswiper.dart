
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';


class Cardswiper extends StatelessWidget{
  const Cardswiper({super.key});

  @override
  Widget build(BuildContext context) {

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
        itemCount: 10,
        layout: SwiperLayout.DEFAULT,
        itemWidth: size.width*0.6,
        itemHeight: size.height*0.9,
        
        itemBuilder: (_, int index) {
          return FadeInImage(
            placeholder: AssetImage('assets/gato.png'), 
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVn4YX66yXDWR1i5XCu1ZGrJh0M-pzgdjYyA&s'),
            fit: BoxFit.cover,
            );
        },)
        
      ),
    );
  }
}