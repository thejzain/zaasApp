import 'dart:ui';

import 'package:flutter/material.dart';

class Reward extends StatefulWidget {
  Reward({Key? key}) : super(key: key);

  @override
  State<Reward> createState() => _RewardState();
}

class _RewardState extends State<Reward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
          ),
          Container(
            child: Text(
              "Zaas",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text("Congratulations User!"),
          SizedBox(
            height: 25,
          ),
          CircleAvatar(
            maxRadius: 80,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "You Have Earned ",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "XX Coins",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "THANK YOU FOR YOUR SUPPORT",
            style: TextStyle(fontSize: 23),
          )
        ],
      ),
    );
  }
}
