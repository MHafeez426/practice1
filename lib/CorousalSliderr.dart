import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Carousell(),debugShowCheckedModeBanner: false,));
}
class Carousell extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        title: Text("Carousel Slider"),
      ),
      body: ListView(
        children: [
          CarouselSlider(items:[Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image:NetworkImage("https://cdn.mos.cms.futurecdn.net/p5quSf4dZXctG9WFepXFdR.jpg"),fit: BoxFit.cover),
            ),
          ),
          Container(margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage("https://mymodernmet.com/wp/wp-content/uploads/2018/10/Mou-Aysha-portrait-photography-3.jpg"),fit: BoxFit.cover)
          ),),
          Container(
            margin:EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage("https://www.anthropics.com/portraitpro/img/page-images/homepage/v22/what-can-it-do-2A.jpg"))
            ),
          )
          ],
    options: CarouselOptions(
    height: 500,
    enableInfiniteScroll: true,
    autoPlay: true,
    aspectRatio: 16/9,
    autoPlayCurve: Curves.easeInCubic,
    enlargeCenterPage: true,
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      viewportFraction: 0.8
    ),
          ),
    ],
      ),
    );
  }

}