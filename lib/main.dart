import 'package:flutter/material.dart';
import 'package:twitterclone/views/BottomNavbar.dart';
import 'package:twitterclone/views/Menubar.dart';
import 'package:twitterclone/views/SearchPage.dart';
import 'package:twitterclone/views/SpacesPageWrapper.dart';
import 'package:twitterclone/views/TwitterSpacesPage.dart';
import 'views/PostsWrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//Thank-you-ChatGPT-Declaration-required-[Final]
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int selectedItemIndex = 2;
  List<Widget> varBodySwap = const [
    PostsData(),
    SearchPage(),
    SpacesPageWrapper(),
    // Text("Notifications",),
    Text("--- Under development ---"),
    // Text("Inbox"),
    Text("--- Under development ---"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//Thank-you-ChatGPT-Add-Key
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: IconButton(
          icon: Image.asset("assets/iconTwitter.png"),
          onPressed: () {
            setState(() {
              selectedItemIndex = 0;
            });
          },
        ),
        //From-AI----------------
        leading: IconButton(
          icon: const Icon(
            Icons.person_rounded,
            color: Colors.grey,
          ),
          // onPressed: () {
          //   Scaffold.of(context).openDrawer();
          // },
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
      ),
//Thank-you-ChatGPT
      drawer: const Drawer(
        //Importing-from-file-Menubar.dart
        child: MenuBar(),
      ),
      //From-AI----------------

      body: Center(
        child: varBodySwap[selectedItemIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
              ),
              backgroundColor: Colors.blue,
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mic_rounded),
              backgroundColor: Colors.blue,
              label: "Spaces",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_rounded),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inbox_rounded),
              label: "Inbox",
            )
          ],
          currentIndex: selectedItemIndex,
          onTap: (int index) {
            setState(() {
              selectedItemIndex = index;
            });
          }),
    );
  }
}
