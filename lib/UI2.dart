import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:untitled/Homepage.dart';

void main() {
  runApp(MaterialApp(home: SplashUI(), debugShowCheckedModeBanner: false,));
}

class SplashUI extends StatefulWidget {

  @override
  State<SplashUI> createState() => _SplashUIState();
}

class _SplashUIState extends State<SplashUI> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(color: Colors.tealAccent, child:Column(crossAxisAlignment: CrossAxisAlignment.stretch,
           mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
            Expanded(
              child:Lottie.asset("assets/17848-bubbles.json",fit: BoxFit.fill),),
                  Expanded(
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [ElevatedButton(
                      onPressed: () => _onAlertWithLoginform(context),
                      child: Text("LOGIN")),
                  ElevatedButton(
                      onPressed: () => _onAlertRegister(context)(context),
                      child: Text("REGISTER")),
]),),
          ],),
      ),);
  }


  _onAlertWithLoginform(context) {
    Alert(
        context: context,
        title: "LOGIN",
        content: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(decoration: InputDecoration(
              labelText: "Username", icon: Icon(Icons.account_circle),),),

            TextField(decoration: InputDecoration(
                labelText: "Password", icon: Icon(Icons.security)),)
          ],
        ),
        buttons: [DialogButton(child: Text("LOGIN"), onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        })
        ]
    ).show();
  }
}

_onAlertRegister(context) {
  Alert(title: "NEW USER",
      context: context,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextField(decoration: InputDecoration(labelText: "Name"),),
        TextField(decoration: InputDecoration(
            labelText: "Phone NO", icon: Icon(Icons.contact_phone)),),
        TextField(decoration: InputDecoration(
            labelText: "EMAIL", icon: Icon(Icons.mail)),),
        TextField(decoration: InputDecoration(
            labelText: "PASSWORD", icon: Icon(Icons.security)),)
      ],),
      buttons: [DialogButton(onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }, child:Text("SUBMIT"),)
      ]).show();
}