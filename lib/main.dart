
import 'package:adv_flutter_ch2/Date%20PickeTime%20_Picker_Dialog_Box_using_Material_&_Cupertino/view/screen/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Date PickeTime _Picker_Dialog_Box_using_Material_&_Cupertino/provider/dialog_provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DialogProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        datePickerTheme: DatePickerThemeData(
          backgroundColor: Colors.blueGrey.shade100,
        ),
        timePickerTheme: TimePickerThemeData(
          backgroundColor: Colors.blueGrey.shade100,
        ),
      ),
      home: const Dialog_Screen(),
    );
  }
}
