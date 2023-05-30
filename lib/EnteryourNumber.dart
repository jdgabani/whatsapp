
import 'package:flutter/material.dart';
import 'package:whatsapp/Initializing.dart';

class EnterYourNumber extends StatefulWidget {
  const EnterYourNumber({Key? key}) : super(key: key);

  @override
  State<EnterYourNumber> createState() => _EnterYourNumberState();
}

class _EnterYourNumberState extends State<EnterYourNumber> {
  int selected = 0;
  int selected2=0;
  List data = [
    "India",
    "Pakistan",
    "South Africa",
    "United kingdom",
    "United States",
    "Afghanistan",
    "Aland Islands",
    "Albania",
    "Algeria",
    "American Samoa",

  ];
  List data1=[
    "+91",
    "+92",
    "+27",
    "+44",
    "+1",
    "+93",
    "+358",
    "+355",
    "+213",
    "+1",
  ];
  List newicon=[
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
  ];
  String? name = "Choose a country";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 100),
                  Text("Enter your phone number",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.teal,
                    fontSize: 17,
                  ),
                  ),
                  SizedBox(width: 50,),
                  PopupMenuButton(
                      itemBuilder: (context) =>
                      [
                        PopupMenuItem(child:

                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text("Settings"),
                        ),
                          height: 30,
                          padding: EdgeInsets.symmetric(horizontal: 30),
                        ),
                      ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 16),
                  Text("WhatsApp wil need to verify your phone number.",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  ),
                  SizedBox(width: 3,),
                  Text("What's",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal,
                  ),
                  ),
                ],
              ),
              SizedBox(height: 7,),
              Text("my number?",
              style: TextStyle(fontSize: 13,
              color: Colors.teal,
                fontWeight: FontWeight.w500,
              ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: DropdownButton(
                  iconDisabledColor: Colors.teal,
                  iconEnabledColor: Colors.teal,
                  isExpanded: true,
                   alignment: Alignment.center,
                  hint: Text("${name}"),
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                  items: List.generate(
                    data.length,
                        (index) => DropdownMenuItem(
                      value: data[index],
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                              });
                              selected=index;
                            },
                            child: Text(
                              data[index],
                              style: TextStyle(fontWeight: FontWeight.w700,
                              color: selected==index
                              ?Colors.teal
                              :Colors.black,
                              ),
                            ),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              setState(() {
                              });
                              selected=index;
                            },
                            child: Text(
                              data1[index],
                              style: TextStyle(fontWeight: FontWeight.w700,
                                color: selected==index
                                    ?Colors.teal
                                    :Colors.black,
                              ),
                            ),
                          ),
                          IconButton(onPressed: (){
                            setState(() {
                            });
                            selected2=index;
                          },
                              icon: Icon(
                                  newicon[index],
                                color: selected2==index
                                  ?Colors.teal
                                  :Colors.transparent,
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  onChanged: (value){
                    setState(() {});
                    name=value as String?;
                  },
                ),
              ),
                SizedBox(
             height: 10,
             child: Divider(
              thickness: 1.4,
               endIndent: 60,
               indent: 60,
               color: Colors.teal,
             ),
          ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 60),
               child: TextField(
                 keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "+  91       phone number",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
               ),
             ),
              Divider(
                thickness: 1.5,
                color: Colors.teal,
                endIndent: 58,
                indent:60 ,
              ),
              SizedBox(height: 14,),
              Text("Carrier charges may apply",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
              ),
              SizedBox(height: 440),
              ElevatedButton(
                onPressed: () {
                    setState(() {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Initializing()),);
                    });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),),
                  padding: EdgeInsets.symmetric(horizontal: 25,vertical: 12),
                ),
                child: Text("NEXT"),),
            ],
          ),
          ),
        ),
    );
  }
}
