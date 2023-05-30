import 'package:flutter/material.dart';
import 'package:whatsapp/EnteryourNumber.dart';

class WelcomeToWhatsApp extends StatefulWidget {
  const WelcomeToWhatsApp({Key? key}) : super(key: key);

  @override
  State<WelcomeToWhatsApp> createState() => _WelcomeToWhatsAppState();
}

class _WelcomeToWhatsAppState extends State<WelcomeToWhatsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(
        height: 110,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Text(
          "Welcome to WhatsApp",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.teal,
          ),
        ),
      ),
      SizedBox(
        height: 115,
      ),
      Image.asset(
        'assets/images/whatsdegine.png',
        height: 250,
        width: 250,
      ),
      SizedBox(height: 96,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Read our",
              style: TextStyle(color: Colors.black.withOpacity(0.45),
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
            Text(
              " Privacy Policy.",
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
            Text(
              " Tap \"Agree and continue\" to",
              style: TextStyle(color: Colors.black.withOpacity(0.45),
              fontWeight: FontWeight.w500,
              fontSize: 13,),
            ),
              ],
            ),
      ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 100,),
                Text("accept the",
                ),
                Text("Terms of Service.",style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>EnterYourNumber(),),);
              });
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),),
              padding: EdgeInsets.symmetric(horizontal: 68,vertical: 12),
            ),
            child: Text("AGREE AND CONTINUE"),),
        ],
      ),
    );
  }
}
