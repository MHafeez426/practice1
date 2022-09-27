import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:untitled/Homepage.dart';

void main(){
  runApp(MaterialApp(home: SplashUI(),debugShowCheckedModeBanner: false,));
}
class SplashUI extends StatefulWidget{

  @override
  State<SplashUI> createState() => _SplashUIState();
}

class _SplashUIState extends State<SplashUI> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.end,
          children: [ Expanded(child: Container(color: Colors.tealAccent,
            child: Lottie.asset("assets/17848-bubbles.json"),
          ),),
            Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 50,),
                ElevatedButton(onPressed: () => _onAlertWithLoginform(context),
                    child: Text("LOGIN")),
              ],)
          ]
      ),);
  }


  _onAlertWithLoginform(context) {
  Alert(
  context:context,
    title: "LOGIN",
    content: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextField(decoration: InputDecoration(labelText:"Username",icon: Icon(Icons.account_circle),),),

      TextField(decoration: InputDecoration(labelText:"Password",icon: Icon(Icons.security)),)],
    ),
buttons:[DialogButton(child: Text("LOGIN"), onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));})]
  ).show();
  }
}