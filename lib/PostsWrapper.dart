import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import 'Post.dart';

class PostsData extends StatelessWidget {
  const PostsData({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      PostWidget(
        profileName: "Lorem ipsum ",
        username: "Something",
        tweetText:
            "Lorem ipsum dolor sit Lorem ipsum dolor sit Lorem ipsum dolor sit Lorem ipsum dolor sit Lorem ipsum dolor sit Lorem ipsum dolor sit Lorem ipsum dolor si tLorem ipsum dolor sit",
      ),
      PostWidget(
        profileName: "Something else",
        username: "Something",
        tweetText: "Lorem ipsum",
      ),
      PostWidget(
        profileName: "Something else",
        username: "Something",
        tweetText: "Lorem ipsum",
      ),
      PostWidget(
        profileName: "Something else",
        username: "Something",
        tweetText: "Lorem ipsum",
      ),
    ]);
  }
}
