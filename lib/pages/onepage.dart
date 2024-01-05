import 'package:flutter/material.dart';
import 'package:lab6try/pages/hobby.dart';

class Onepage extends StatefulWidget {
  const Onepage({super.key});

  @override
  State<Onepage> createState() => _OnepageState();
}

class _OnepageState extends State<Onepage> {
  List<Hobby> hobbies = [];
  List _SelectedItem = [];
  @override
  void initState() {
    super.initState();
    hobbies = Hobby.getHobby();
  }

  List<Widget> CreateCheckbox() {
    List<Widget> widgets = [];

    for (var hb in hobbies) {
      widgets.add(CheckboxListTile(
        value: hb.value,
        onChanged: (value) {
          setState(() {
            hb.value = value!;

            if (value) {
              _SelectedItem.add(hb.name);
            } else {
              _SelectedItem.remove(hb.name);
            }
          });
        },
        title: Text(hb.name),
      ));
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("lab6"),
      ),
      body: Column(
        children: [
          Text("งานอดิเรก"),
          Column(
            children: 
            CreateCheckbox()
          )
        ],
      ),
    );
  }
}
