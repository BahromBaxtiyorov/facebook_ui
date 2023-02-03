import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../items/notificationsItem.dart';
import '../states(attributes).dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15.0,right:15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifications",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600)),
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(Icons.search,color: Colors.black,size: 25,)
                )
              ],
            ),
          ),
          SizedBox(height:20),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("New",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: notificationsList.length,
              itemBuilder:(context,index){
                return notificationsItem(
                  context,
                  notificationsList[index],
                );
              })
        ],
      )
    );
  }
}
