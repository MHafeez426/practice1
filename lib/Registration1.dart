import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';

void main() {
  runApp(MaterialApp(
    home: Registration1(),
    debugShowCheckedModeBanner: false,
  ));
}

class Registration1 extends StatefulWidget {
  @override
  State<Registration1> createState() => _Registration1State();
}

class _Registration1State extends State<Registration1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text("LOGIN"),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text("REGISTRATION FORM",style: TextStyle(color: Colors.black,fontSize: 20),),
          ),
          Container(
            padding: EdgeInsets.only(top:10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top:15,left: 5,right: 5),
                  child: Column(
                    children: [
                      Text("Name"),
                      TextField(
                        decoration: InputDecoration(
                            label: Text("Enter your name"),
                            border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30,left: 5,right: 5),
                  child: Column(
                    children: [
                      Text("email"),
                      TextField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                            label: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Icon(Icons.email), Text("E-mail")],
                        )
                        ),
                      )
                    ],
                  ),
                ),
                Container(padding: const EdgeInsets.only(top: 45,left: 5,right: 5),
                child: Column(children: [
                  Text("PASSWORD"),
                  TextField(decoration: InputDecoration(label:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.security),Text("Password"),],
                  )),
                  )
                ],),
                ),
                Container(padding:EdgeInsets.only(top:60,left: 5,right: 5),
                child:ElevatedButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
                } ,child: Text("Submit")),
                )
              ],

            ),
          )
        ],
      ),
    );
  }
}
