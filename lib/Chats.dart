import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List images = [
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
  List names = [
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
  List detais = [
    "Introducing IGTV on Instagram!",
    "Tried Linux and I loved it! :p",
    "Gotta add a pinch of ML in every Single Tech!",
    "You need sime funding?",
    "Finally, switching to Android..",
    "Alexa sucks! Google Assistant is the boss!",
    "i'm the richest in the list",
    "Tim could't countinue my legacy,unfortunately!",
    "Chamunda Creation",
    "Codeline Infotech at Yogi chowk",
  ];
  List time = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 2,
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: InkResponse(
                        onTap: () {
                          setState(() {});
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 300,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        images[index],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 300,
                                        color: Colors.black54,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            names[index],
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 50,
                                        width: 300,
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons.chat_sharp,
                                                    color: Colors.teal,
                                                    size: 25),
                                              ),
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons.call,
                                                    color: Colors.teal,
                                                    size: 25),
                                              ),
                                              IconButton(onPressed: (){},
                                                  icon: const Icon(Icons.videocam,
                                                      color: Colors.teal, size: 25),),
                                              IconButton(onPressed: (){},
                                                  icon: const Icon(Icons.info_outline,
                                                      color: Colors.teal, size: 25),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                images[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        names[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        detais[index],
                        style: const TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: Column(
                          children: [
                            Text(
                              time[index],
                              style: const TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
                      minLeadingWidth: 20,
                      horizontalTitleGap: 15,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
