import 'package:facebook_ui/states(attributes).dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/friendsItem.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
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
                Text("Friends",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600)),
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
            padding: const EdgeInsets.only(left: 25,),
            child: Row(
              children: [
                Container(
                  height: 28,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: Center(
                      child: Text('Requests',
                        style: TextStyle(color: Colors.black,fontSize: 18),
                      )),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 28,
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: Center(
                      child: Text('Your friends',
                        style: TextStyle(color: Colors.black,fontSize: 18),
                      )),
                ),
              ],
            ),
          ),
          Divider(thickness: 3, color: Colors.grey.shade300),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("People You May Know",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                SizedBox(height: 10,),
                ListView.builder(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                     itemCount: friendsList.length,
                    itemBuilder:(context,index){
                    return friendsItem(
                      context,
                      friendsList[index],
                    );
                    })
              ],
            ),
          )
        ],
     ),
    );
  }
}
