import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/storyModel.dart';

Widget storyItem(BuildContext context, StoryModel story) {
  return Container(
      margin: EdgeInsets.only(right: 10),
      height: 100,
      width: MediaQuery.of(context).size.width * 0.28,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story.storyImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1)
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 1.5)),
                child: CircleAvatar(
                  backgroundImage: AssetImage(story.userImage),
                ),
              ),
              Text(
                story.name,
                style: TextStyle(color: Colors.white),
              )
            ],
          )
      )
  );
}
