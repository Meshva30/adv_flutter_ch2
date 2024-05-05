import 'package:flutter/material.dart';

class TimePicker extends StatelessWidget {
  const TimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,
        title: Text(
          'Time Picker',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: IconButton(onPressed:
            () async {
           TimeOfDay time= await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
            orientation: Orientation.portrait,
          ) ?? TimeOfDay.now();
        },
          icon: Icon(Icons.timer_rounded,size: 38,),
        ),
      ),
    );
  }
}
