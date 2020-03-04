import 'package:flutter/material.dart';

class ChoiceChipScreen extends StatefulWidget {
  @override
  _ChoiceChipScreenState createState() => _ChoiceChipScreenState();
}

class _ChoiceChipScreenState extends State<ChoiceChipScreen> {
  var data = ['Small', 'Medium', 'Large', 'XLarge'];
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Choice Chip'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return ChoiceChip(
              label: Text(data[index]),
              selected: _value == index,
              selectedColor: Colors.green,
              onSelected: (bool value) {
                setState(() {
                  _value = value ? index : null;
                });
              },
              
              backgroundColor: Colors.blue,
              labelStyle: TextStyle(color: Colors.white),
            );
          },
        ),
      ),
    );
  }
}