
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Cupertino_Widgets/provider/platfrom.dart';
import 'Cupertino_Widgets/utils/adaptive/adaptive.dart';
import 'Date PickeTime _Picker_Dialog_Box_using_Material_&_Cupertino/provider/dialog_provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DialogProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PlatformProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String ans = Platform.operatingSystem;
    print(ans);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        datePickerTheme: DatePickerThemeData(
          backgroundColor: Colors.blue.shade50,
        ),
      ),
      home: const AdaptiveScreen(),
    );
  }
}
