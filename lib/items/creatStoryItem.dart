import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget creatStoryItem(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    height: 200,
    width: MediaQuery.of(context).size.width * 0.24,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey, width:1)
    ),
    child: Stack(
      children: [
        Container(
          height: 120,
          width: MediaQuery.of(context).size.width * 0.24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/i (9).webp"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height:80),
              CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                child: Icon(Icons.add, color: Colors.white, size: 20)),
              Text("Creat story",style: TextStyle(fontSize: 14),),
            ]
          ),
        )
      ],
    ),
  );
}
