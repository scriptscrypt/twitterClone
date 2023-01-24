import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //First-Line-start

        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.person),
                  iconSize: 32,
                  onPressed: () {},
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.person),
                      iconSize: 16,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert_rounded),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            //First-Line-end

            //Second-Line-start
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Lorem Ipsum"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text("@Lorem Ipsum"),
            ),
            //Second-Line-end

            //Third-Line-start
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("00Following"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("00Followers"),
                ),
              ],
            ),
            //Third-Line-end
          ],
        ),
        const ListTile(
          leading: Icon(Icons.person_outline),
          title: Text("Profile"),
        ),
        const ListTile(
          leading: Icon(Icons.chat_bubble_outline),
          title: Text("Topics"),
        ),
        const ListTile(
          leading: Icon(Icons.bookmark_outline),
          title: Text("Bookmarks"),
        ),
        const ListTile(
          leading: Icon(Icons.filter_list_rounded),
          title: Text("Lists"),
        ),
        const ListTile(
          leading: Icon(Icons.person_pin_outlined),
          title: Text("Twitter Circle"),
        ),
        //Open-and-close-accordians-start
        const ExpansionTile(
          title: Text('Creator Studio'),
          children: [
            ListTile(
              leading: Icon(Icons.thunderstorm_outlined),
              title: Text("Moments"),
            )
          ],
        ),
        const ExpansionTile(
          title: Text('Professional Tools'),
          children: [
            ListTile(
              leading: Icon(Icons.rocket_launch),
              title: Text("Twitter for Professionals"),
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text("Monetization"),
            )
          ],
        ),
        const ExpansionTile(
          title: Text('Settings & Support'),
          children: [
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings and privacy"),
            ),
            ListTile(
              leading: Icon(Icons.help_center),
              title: Text("Help Center"),
            )
          ],
        ),

        //Open-and-close-accordians-end
        //Final-row-
      ],
    );
  }
}
