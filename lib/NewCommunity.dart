import 'package:flutter/material.dart';

class NewCommunity extends StatefulWidget {
  NewCommunity({Key? key}) : super(key: key);

  @override
  State<NewCommunity> createState() => _NewCommunityState();
}

class _NewCommunityState extends State<NewCommunity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading:
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("New community"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Icon(Icons.arrow_forward,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.white70,
                      size: 70,
                    ),
                  ),
                ),
                Positioned(
                  right: -10,
                  bottom: -8,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.teal,
                    child: Icon(
                      Icons.camera_alt_sharp,
                      color: Colors.white.withOpacity(0.85),
                      size: 23,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                cursorColor: Colors.teal,
                decoration: InputDecoration(
                  labelText: "Community name",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.black45),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 140,
              width: 320,
              color: Colors.grey.withOpacity(0.105),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                    Text(
                      "Community description",
                    style: TextStyle(color: Colors.black45,),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
