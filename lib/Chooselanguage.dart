import 'package:flutter/material.dart';
import 'package:whatsapp/WelcometoWhatsapp.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  int selsected = 0;
  List language1 = [
    "English",
    "हिन्दी",
    "मराठी",
    "ગુજરાતી",
    "தமிழ்",
    "ভারত",
    "తెలుగు",
    "ಕನ್ನಡ",
    "മലയാളം",
    "ਹਵਾਲੇਸੋਧੋ",
    "ویکیپیڈیا",
    "Afrikaans ",
    "shqip",
    "አማርኛ",
    "Azərbaycan dili",
    "Българоезичната",
    "valencià",
    "中文維基百科",
    "繁體中文（香港）"
  ];
  List language2 = [
    "(phone's language)",
    "Hindi",
    "Marathi",
    "Gujarati",
    "Tamil",
    "Bengali",
    "Telugu",
    "Kannada",
    "Malayalam",
    "Punjabi",
    "Urdu",
    "Afrikaans ",
    "Albanian ",
    "Amharic",
    "Azerbaijani",
    "Bulgarian",
    "Catalan",
    "Simplified Chinese",
    "Traditional Chinese(Hong Kong)"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 77, top: 80),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset('assets/images/whatsdegine.png',
                    height: 250,
                      width: 250,
                      color: Colors.teal.withAlpha(35),
                    ),
                    Positioned(
                      top: 140,
                      left: 13,
                      child: Text(
                        "Welcome to WhatsApp",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 180,
                      right:10,
                      child: Text(
                        "Choose your Language to get started",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 19,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: InkResponse(
                        onTap: () {
                          setState(() {
                            selsected = index;
                          });
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          margin: EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(width: 2, color: Colors.teal),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: selsected == index
                                    ? Colors.green
                                    : Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        language1[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        language2[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: InkResponse(
            onTap: () {
              setState(() {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeToWhatsApp()),);
              });
            },
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
            ),
        );
   }
}