import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyCupertinoDatePicker extends StatelessWidget {
  const MyCupertinoDatePicker({Key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,
        title: Text(
          'Date Picker',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: SizedBox(
          height: 500,
          width: 400,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: DateTime.now(),
            onDateTimeChanged: (DateTime newDateTime) {
              print(newDateTime);
            },
          ),
        ),
      ),
    );
  }
}

