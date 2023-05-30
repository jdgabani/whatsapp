import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  List names=[
    "Mark Zuckerberg",
    "Bill Gates",
    "Sundar Pichai",
    "Brother",
    "Nevil Vaghasiya",

  ];
  List detais=[
    "12 minutes ago",
    "49 minutes ago",
    "54 minutes ago",
    "Today, 17:00",
    "Today, 16:51",

  ];
  List images=[
    'assets/images/mark_zuckerberg.jpg',
    'assets/images/bill gates.jpg',
    'assets/images/sundar pichai.jpg',
    'assets/images/Brother.jpg',
    'assets/images/nevilbhai.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          ListTile(
          title: Text(
            "My status",
            style: TextStyle(
                fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("Tap to add status update",style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500,color: Colors.grey ),),
          leading: Stack(
            clipBehavior: Clip.none,
           children: [
             Container(
               height: 50,
               width: 50,
               decoration: BoxDecoration(
                 color: Colors.grey,
                 shape: BoxShape.circle,
                 image: DecorationImage(
                   image: AssetImage(
                     "assets/images/jd.jpg",
                   ),
                   fit: BoxFit.cover,
                 ),
               ),
             ),
             Positioned(
               right:-6,
               bottom: -2,
               child: Container(
                 height: 25,
                 width: 25,
                 decoration: BoxDecoration(
                   color: Colors.teal,
                   shape: BoxShape.circle,
                   border: Border.all(color: Colors.white,width: 2)
                 ),
                 child: Icon(Icons.add,color: Colors.white70,size: 20,),
               ),
             ),
           ],
          ),
        ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Recent updates",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.bold),),
          ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.greenAccent,width: 3),
                        image: DecorationImage(
                          image: AssetImage(images[index],),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(names[index],
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),
                    ),
                    subtitle: Text(detais[index],
                      style: TextStyle(
                        fontSize: 13,
                      ),),
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
