import 'package:flutter/material.dart';



Padding indicator() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Material Indicator : -',
          style: TextStyle(

              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        CircularProgressIndicator(

        )
      ],
    ),
  );
}