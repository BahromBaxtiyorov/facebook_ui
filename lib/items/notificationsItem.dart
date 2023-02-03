import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/notificationsModel.dart';

Widget notificationsItem(
  BuildContext context,
  notificationsModel notifications,
) {
  return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: double.infinity,
      color: Colors.blue.shade50,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage(notifications.userImage),
              ),
              Positioned(
                bottom: 5,
                left: 65,
                child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 20,
                    child: Icon(
                      Icons.message_outlined,
                      color: Colors.white,
                      size: 22,
                    )),
              )
            ]),
            Container(
              padding: EdgeInsets.only(left:10),
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text(notifications.name,
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),
                  SizedBox(height: 20,),
                  Text(notifications.time,
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300)),
                ],
              ),
            ),
            SizedBox(width:50),
             Icon(
              Icons.more_horiz,
              color: Colors.grey.shade600,
              size: 30,
            ),
          ],
        ),
      ));
}
