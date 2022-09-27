import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridVieww(),debugShowCheckedModeBanner: false,));

}
class GridVieww extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("GridView with text"),),),

    );
  }
}