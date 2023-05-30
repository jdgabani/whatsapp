import 'package:flutter/material.dart';
import 'package:whatsapp/Calls.dart';
import 'package:whatsapp/Chats.dart';
import 'package:whatsapp/Communities.dart';
import 'package:whatsapp/Status.dart';
import 'package:whatsapp/settings.dart';

class Private extends StatefulWidget {
  Private({Key? key}) : super(key: key);

  @override
  State<Private> createState() => _PrivateState();
}

class _PrivateState extends State<Private> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);

    tabController!.addListener(() {
      print('TAB ${tabController!.index}');

      setState(() {
        home = tabController!.index;
      });
    });

    super.initState();
  }

  int home = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          backgroundColor: (home == 0) ? Colors.transparent : Colors.teal,
          // (home == 1)
          //         ? Colors.teal
          //         : (home == 2)
          //             ? Colors.teal
          //             : Colors.teal,
          child: (home == 0)
              ? SizedBox()
              : (home == 1)
                  ? Icon(Icons.message_sharp)
                  : (home == 2)
                      ? Icon(Icons.camera_alt_rounded)
                      : Icon(Icons.add_ic_call_sharp),
        ),
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          backgroundColor: Colors.teal.shade700,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            (home == 0)
                ? SizedBox()
                : (home == 1)
                    ? IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      )
                    : (home == 2)
                        ? IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          )
                        : IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
            (home == 0)
                ? PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("settings"),
                      ),
                    ],
                  )
                : (home == 1)
                    ? PopupMenuButton(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text("New group"),
                          ),
                          PopupMenuItem(
                            child: Text("New broadcast"),
                          ),
                          PopupMenuItem(
                            child: Text("Linked devices"),
                          ),
                          PopupMenuItem(
                            child: Text("starred messages"),
                          ),
                          PopupMenuItem(
                            child: Text("Payments"),
                          ),
                          PopupMenuItem(
                            child: InkResponse(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Settings(),
                                    ),
                                  );
                                },
                                child: Text("Settings")),
                          ),
                        ],
                      )
                    : (home == 2)
                        ? PopupMenuButton(
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Text("Status Privacy"),
                              ),
                              PopupMenuItem(
                                child: Text("settings"),
                              ),
                            ],
                          )
                        : PopupMenuButton(
                            // icon: Icon(Icons.account_circle),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Text("Clear call log"),
                              ),
                              PopupMenuItem(
                                child: Text("settings"),
                              ),
                            ],
                          ),
          ],
          bottom: TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            onTap: (value) {
              setState(() {
                home = value;
              });
            },
            tabs: [
              Icon(Icons.groups),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Communities(),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
