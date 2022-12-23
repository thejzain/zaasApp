import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:zaasapp/reward.dart';

const List<String> list = <String>[
  'E-waste',
  'Clothings',
  'Plastic',
  'Domestic waste'
];
const List<String> items = <String>[
  "Company1",
  "Company2",
  "Company3",
  "Company4",
  "Company5",
  "Company6",
  "Company7",
  "Company8",
  "Company9",
];

class Recycle extends StatefulWidget {
  Recycle({Key? key}) : super(key: key);

  @override
  State<Recycle> createState() => _RecycleState();
}

class _RecycleState extends State<Recycle> {
  String dropdownValue = list.first;
  double currentSlider = 40;
  String title = 'Long List';
  var company = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: Column(
        children: [
          Container(
            height: 250,
          ),
          Text(
            "Type Of Waste",
            style: TextStyle(fontSize: 23),
          ),
          SizedBox(height: 20),
          Container(
            width: 300,
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.black, fontSize: 20),
              underline: Container(
                height: 2,
                color: Colors.green,
              ),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  onTap: () {
                    setState(() {
                      company = value;
                    });
                  },
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Weight",
            style: TextStyle(fontSize: 23),
          ),
          SizedBox(height: 20),
          Text(
            currentSlider.toString(),
            style: TextStyle(fontSize: 23),
          ),
          Container(
            width: 250,
            child: Slider(
                value: currentSlider,
                min: 30,
                max: 60,
                divisions: 10,
                onChanged: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                }),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: items.length,
              prototypeItem: ListTile(
                title: Text(items.first),
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                  hoverColor: Colors.red,
                  onTap: () {
                    log(items[index]);
                  },
                );
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Reward()),
                );
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
