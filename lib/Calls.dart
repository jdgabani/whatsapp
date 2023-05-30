import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  List images=[
    'assets/images/mark_zuckerberg.jpg',
    'assets/images/bill gates.jpg',
    'assets/images/sundar pichai.jpg',
    'assets/images/elon musk.jpg',
    'assets/images/tim cook.jpg',
    'assets/images/satya nadella.jpg',
    'assets/images/warren buffet.jpg',
    'assets/images/steve jobs.jpg',
    'assets/images/Brother.jpg',
    'assets/images/nevilbhai.jpg',
  ];
  List names=[
    "Mark Zuckerberg",
    "Bill Gates",
    "Sundar Pichai",
    "Elon Musk",
    "Tim Cook",
    "Satya Nadella",
    "Warren Buffet",
    "Steve Jobs",
    "Brother",
    "Nevil Vaghasiya",
  ];
  List detais=[
    "(2) Today,07:21 pm",
    "(3) Today,07:21 pm",
    "February 3,17:19 pm",
    "February 1,20:29 pm",
    "February 3,30:23 pm",
  ];
  List time=[
    "9:11 PM",
    "8:47 PM",
    "7:07 PM",
    "6:33 PM",
    "3:55 PM",
    "1:27 PM",
    "11:08 PM",
    "10:05 PM",
    "9:30 PM",
    "10:30 PM",
  ];
  List icon=[
    Icons.call,
    Icons.call,
    Icons.videocam_sharp,
    Icons.videocam_sharp,
    Icons.videocam_sharp,
  ];
  List icon1=[
    Icons.call_received,
    Icons.call_received,
    Icons.call_made_outlined,
    Icons.call_made_outlined,
    Icons.call_made_outlined,
  ];
  List iconcolor=[
    Colors.red,
    Colors.red,
    Colors.green,
    Colors.green,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "Create call link",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Share a link for your WhatsApp call",style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500,color: Colors.grey ),),
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.teal,
              child: Icon(Icons.link),
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Recent",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  trailing: Icon(
                    icon[index],
                    color: Colors.teal,
                  ),
                  leading: Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(images[index],),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(names[index],
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(icon1[index],
                        size: 16,
                        color: iconcolor[index],
                      ),
                      Text(detais[index],
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 12),
                  minLeadingWidth: 20,
                  horizontalTitleGap: 10,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
