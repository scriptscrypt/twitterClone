import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class widgetBottomNavBar extends StatefulWidget {
  const widgetBottomNavBar({super.key});

  @override
  State<widgetBottomNavBar> createState() => _widgetBottomNavBarState();
}

class _widgetBottomNavBarState extends State<widgetBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int selectedItemIndex = 0;
    return BottomNavigationBar(
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
        });
  }
}
