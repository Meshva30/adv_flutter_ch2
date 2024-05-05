import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyCupertinoTimePicker extends StatelessWidget {
  const MyCupertinoTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,
        title: Text(
          'time Picker',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: CupertinoTimerPicker(onTimerDurationChanged: (value) {
          (Duration value){

          };
        },),
      ),
    );
  }
}
