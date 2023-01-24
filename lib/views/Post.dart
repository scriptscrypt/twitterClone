import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostWidget extends StatefulWidget {
  final String username;
  final String profileName;
  final String tweetText;

  const PostWidget({
    Key? key,
    required this.username,
    required this.profileName,
    required this.tweetText,
  }) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      child: Card(
        child: SizedBox(
          // height: ,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  iconSize: 40,
                  icon: const Icon(
                    Icons.person,
                  ),
                  color: Colors.blue,
                  onPressed: () {},
                ),
                //End-of-Row1
                //use-flexible-to-wrap-up-words2
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(widget.profileName),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(widget.username),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_vert)),
                          ],
                        ),
                        //Column-Starts-Row2-Column2

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 24.0, horizontal: 8.0),
                                child: Text(widget.tweetText),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.mode_comment_outlined)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.heart_broken_outlined)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.share_outlined)),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
