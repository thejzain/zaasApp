import 'package:flutter/material.dart';

const List<String> list = <String>['asjdhk', 'asd', 'asdask', 'Four'];

class Recycle extends StatefulWidget {
  Recycle({Key? key}) : super(key: key);

  @override
  State<Recycle> createState() => _RecycleState();
}

class _RecycleState extends State<Recycle> {
  String dropdownValue = list.first;
  double currentSlider = 50;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
        ),
        Text("Type Of Waste"),
        DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? value) {
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        Text("Weight"),
        Text(currentSlider.toString()),
        Slider(
            value: currentSlider,
            max: 100,
            divisions: 5,
            onChanged: (value) {
              setState(() {
                currentSlider = value;
              });
            })
      ],
    );
  }
}
