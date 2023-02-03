import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/creatStoryItem.dart';
import '../items/posstItem.dart';
import '../items/storyItem.dart';
import '../states(attributes).dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("photo_2023-01-25_19-56-23 (3).jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "What's on your mind?",
                        contentPadding: EdgeInsets.only(left: 15),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ))
                ],
              )),
          Container(
              margin: EdgeInsets.only(top: 15, bottom: 10),
              width: MediaQuery.of(context).size.width,
              child: IntrinsicHeight(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: const [
                        Icon(Icons.video_call, color: Colors.red),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Live")
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Colors.grey.shade300,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.photo, color: Colors.green),
                        SizedBox(width: 2),
                        Text("Photo")
                      ],
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Colors.grey.shade300,
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, color: Colors.red),
                      SizedBox(width: 2),
                      Text("Check-in")
                    ],
                  ))
                ],
              ))),
          const Divider(
            thickness: 5,
          ),
          Container(
              height: 200,
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      creatStoryItem(context),
                      ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: storyList.length,
                          itemBuilder: (context, index) {
                            return storyItem(context, storyList[index]);
                          }),
                    ],
                  ),
                ),
              )),
          Divider(
            thickness: 5,
          ),
          ListView.builder(
            itemCount: postList.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, int index) {
              return postItem(context, postList[index], () {
                postList[index].isLiked = !postList[index].isLiked;
                setState(() {});
              });
            },
          )
        ],
      ),
    );
  }
}
