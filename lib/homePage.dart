import 'package:flutter/material.dart';
import 'package:zaasapp/recycle.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
          ),
          Text(
            "Zaas",
            style: TextStyle(fontSize: 23),
          ),
          SizedBox(height: 20),
          CircleAvatar(
            maxRadius: 100,
          ),
          SizedBox(height: 20),
          // const Image(
          //     image: NetworkImage(
          //         "https://e7.pngegg.com/pngimages/547/915/png-clipart-united-states-dollar-money-computer-icons-coin-coin-text-class.png")),
          Text(
            "Wellcome User",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 100,
          ),
          Text("You Have Recieved A Total Amount Of ",
              style: TextStyle(fontSize: 20)),
          Text("X COINS", style: TextStyle(fontSize: 20)),
          SizedBox(
            height: 30,
          ),
          Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontStyle: FontStyle.normal),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Recycle()),
                );
              },
              child: const Text('+'),
            ),
          ),
        ],
      ),
    );
  }
}
