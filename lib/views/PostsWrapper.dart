import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:twitterclone/models/ApiData.dart';
import 'package:twitterclone/services/RemoteService.dart';

import 'Post.dart';

class PostsData extends StatefulWidget {
  const PostsData({super.key});

  @override
  State<PostsData> createState() => _PostsDataState();
}

class _PostsDataState extends State<PostsData> {
  List<Apidata>? apidata;
  var isLoaded = false;
  @override
  void initState() {
    super.initState();
    //Fetch-data-from-api
    getData();
  }

  getData() async {
    apidata = await RemoteService().getApidata();
    if (apidata != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoaded,
      replacement: const Center(
        child: CircularProgressIndicator(),
      ),
      child: ListView.builder(
          itemCount: apidata?.length,
          itemBuilder: ((context, index) {
            return PostWidget(
              profileName: "Lorem",
              username: "@loremipsum",
              tweetText: apidata![index].title,
            );
          })),
    );
    // children: const [
    //   PostWidget(
    //     profileName: "Something else",
    //     username: "Something",
    //     tweetText: "Lorem ipsum",
    //   ),
    // ]);
  }
}
