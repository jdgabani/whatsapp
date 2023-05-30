import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List Iconns = [
    Icons.key_outlined,
    Icons.lock,
    Icons.face_retouching_natural_rounded,
    Icons.message,
    Icons.notifications,
    Icons.data_object_outlined,
    Icons.language,
    Icons.help_outline,
    Icons.people
  ];
  List text = [
    "Account",
    "Privacy",
    "Avtar",
    "Chats",
    "Notifications",
    "Storage and data",
    "App language",
    "Help",
    "Invite a friend"
  ];
  List subtext = [
    "Security notifications, charge number",
    "Blok contacts, disappearing messages",
    "Create edit, profile photo",
    "Theme, Wallpaper, chat history",
    "Message, group & call tones",
    "Network usage, auto-download",
    "English(phone's languages)",
    "Help center, contact us, privacy policy",
    ""
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Row(
          children: [
            SizedBox(
              width: 0,
            ),
            Text(
              "Settings",
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
        // leading: IconButtons
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/jd.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "J.D Gabani",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.qr_code,
                    color: Colors.teal,
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1,
                height: 1,
                color: Colors.black12,
              ),
              SizedBox(
                height: 640,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: Iconns.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: InkResponse(
                          onTap: () {
                            showDialog(
                              builder: (context) {
                                return Dialog(
                                  child: Container(
                                    height: 300,
                                    width: 300,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                );
                              },
                              context: context,
                            );
                          },
                          child: ListTile(
                            leading: Icon(
                              Iconns[index],
                              color: Colors.blueGrey,
                            ),
                            title: Text(
                              text[index],
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            minVerticalPadding: 10,
                            subtitle: Text(
                              subtext[index],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.blueGrey
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "from",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/metta.png",
                    color: Colors.black87,
                    scale: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Meta",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
