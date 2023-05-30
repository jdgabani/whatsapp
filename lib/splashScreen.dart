import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/Chooselanguage.dart';
import 'package:whatsapp/Communities.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   initState() {
     Timer(
       Duration(seconds: 4),
         ()=> Navigator.pushReplacement(
             context,
             MaterialPageRoute(
               builder: (context)=> ChooseLanguage(),
             ),
         ),
     );
     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 340,
          ),
          Center(
            child: Image.asset(
              'assets/images/whatsapp.png',
              scale: 7.5,
            ),
          ),
          SizedBox(
            height: 300,
          ),
          Center(
            child: Text("from"),
          ),
          SizedBox(height:4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/metta.png',
                scale: 20,
                color: Colors.green,
              ),
              SizedBox(width: 3,),
              Text(
                "Meta",
                style: TextStyle(
                  color: Colors.green,
                fontSize: 17,
                fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
