
import 'package:flutter/cupertino.dart';


Padding activityIndiacator() {
  return Padding(
    padding:
    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Cupertino Activity Indicator : -',
          style: TextStyle(

              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        CupertinoActivityIndicator(

        ),
      ],
    ),
  );
}
