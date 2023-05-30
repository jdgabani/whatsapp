import 'package:flutter/material.dart';
import 'package:whatsapp/Private.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Profile info",
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal,
                fontWeight: FontWeight.w700,
              ),
              ),
              SizedBox(height: 30,),
              Text("Please provide your name and an optional profile photo",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
              ),
              SizedBox(
                height: 55,
              ),
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("assets/images/jd.jpg"),),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 3)),
                    hintText: "J.D Gabani",
                    hintStyle: TextStyle(color: Colors.black),
                    suffixIcon: Icon(Icons.tag_faces_outlined,color: Colors.black26,),
                    // enabledBorder: OutlineInputBorder(
                    //   borderSide: BorderSide.none,
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: BorderSide.none,
                    // ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 0),
              //   child: Divider(
              //     thickness: 2,
              //     indent: 16,
              //     endIndent: 55,
              //   ),
              // ),
              SizedBox(height: 100,),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Private()),);
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),),
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                ),
                child: Text("NEXT"),),
            ],
          ),
        ),
      ),
    );
  }
}
