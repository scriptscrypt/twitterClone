import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class widgetBottomNavBar extends StatelessWidget {
  const widgetBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
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
    ]);
  }
}
