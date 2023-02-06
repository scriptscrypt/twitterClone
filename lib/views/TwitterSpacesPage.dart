import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SpacesPage extends StatelessWidget {
  final Color cardBgColor;

  final String SpacesName;
  final String SpacesDesc;
  final String SpacesText3;
  const SpacesPage({
    super.key,
    required this.cardBgColor,
    required this.SpacesName,
    required this.SpacesDesc,
    required this.SpacesText3,
  });
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FractionallySizedBox(
        widthFactor: 0.88,
        child: Card(
            color: cardBgColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.tv),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Live"),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.more_vert_rounded),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            SpacesName.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              SpacesDesc,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(SpacesText3),
                        ),
                      ]),
                ),
              ],
            )),
      )
    ]);
  }
}
