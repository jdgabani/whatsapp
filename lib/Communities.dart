import 'package:flutter/material.dart';
import 'package:whatsapp/NewCommunity.dart';

class Communities extends StatefulWidget {
  const Communities({Key? key}) : super(key: key);

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 54),
            child: Image.asset(
              'assets/images/communities2.png',
              height: 230,
              width: 300,
            ),
          ),
          Text(
            "Introducing communities",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 13),
          Text(
            "Easily organize your related groups and send",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black45,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "announcements. Now, your coummunities, like",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black45,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "neighborhoods or schools, can have their own",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black45,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "space.",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black45,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NewCommunity(),),);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.teal,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)),),
               padding: EdgeInsets.symmetric(horizontal: 50,vertical: 13),
            ),
            child: Text("Start your community"),),
        ],
      ),
    );
  }
}
