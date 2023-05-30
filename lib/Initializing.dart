import 'dart:async';

import 'package:flutter/material.dart';

import 'Profileinfo.dart';

class Initializing extends StatefulWidget {
  const Initializing({Key? key}) : super(key: key);

  @override
  State<Initializing> createState() => _InitializingState();
}

class _InitializingState extends State<Initializing> {
  initState() {
    Timer(
      Duration(seconds:  5),
          ()=> Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context)=> ProfileInfo(),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Text(
                "Initializing...",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.teal,
                ),
              ),
            ),
            SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                "Please wait a moment",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.black.withOpacity(0.30),
                ),
              ),
            ),
            SizedBox(
              height: 115,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Image.asset(
                'assets/images/whatsdegine.png',
                height: 250,
                width: 250,
              ),
            ),
            SizedBox(height: 180,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 155),
             child: CircularProgressIndicator(
               color: Colors.teal,
             ),
           ),
          ],
        ),
      ),
    );
  }
}
