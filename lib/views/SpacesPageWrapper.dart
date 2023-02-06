import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'TwitterSpacesPage.dart';

class SpacesPageWrapper extends StatelessWidget {
  const SpacesPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      SpacesPage(
        cardBgColor: Color.fromARGB(255, 206, 219, 240),
        SpacesDesc: "lorem",
        SpacesName: "lorem",
        SpacesText3: "lorem",
      ),
      SpacesPage(
        cardBgColor: Color.fromARGB(255, 240, 206, 235),
        SpacesDesc: "lorem",
        SpacesName: "lorem",
        SpacesText3: "lorem",
      ),
      SpacesPage(
        cardBgColor: Color.fromARGB(255, 206, 240, 212),
        SpacesDesc: "lorem",
        SpacesName: "lorem",
        SpacesText3: "lorem",
      ),
      SpacesPage(
        cardBgColor: Color.fromARGB(255, 225, 206, 240),
        SpacesDesc: "lorem",
        SpacesName: "lorem",
        SpacesText3: "lorem",
      ),
    ]);
  }
}
