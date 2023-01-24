import 'package:flutter/material.dart';
import 'package:twitterclone/views/BottomNavbar.dart';
import 'package:twitterclone/views/Menubar.dart';
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
          onPressed: () {},
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

      body: const PostsData(),

      bottomNavigationBar: const widgetBottomNavBar(),
    );
  }
}
