import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/friendsModel.dart';

Widget friendsItem(
  BuildContext context,
  friendsModel friends,
) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.15,
    width: double.infinity,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: CircleAvatar(
            radius: 55,
            backgroundImage: AssetImage(friends.userImage,),
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              friends.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15),
            Text(friends.mutualFriends,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),),
            SizedBox(height: 15),
            Row(
              children: [
                Container(
                  height: 32,
                  width: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: Center(
                      child: TextButton(
                        child: Text('Add friend',
                    style: TextStyle(color: Colors.white,fontSize: 16),),
                        onPressed: () {  },
                      )),
                ),
                SizedBox(width: 10),
                Container(
                  height: 32,
                  width: 125,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: Center(
                      child: TextButton(child: Text('Remove',
                        style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                        onPressed: () {  },
                      )),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
