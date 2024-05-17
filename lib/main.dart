import 'dart:io';

import 'package:adv_flutter_ch2/CupertinoActionSheet%20&%20CupertinoContextMenu/view/CupertinoContextMenu.dart';
import 'package:adv_flutter_ch2/CupertinoTabBar,%20CupertinoSlider&CupertinoSlidingSegmentedControl/provider/segmentprovider.dart';
import 'package:adv_flutter_ch2/bottomnavigationbar/provider/bottom_navigation_bar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'CupertinoActionSheet & CupertinoContextMenu/provider/galleryProvider.dart';
import 'CupertinoActionSheet & CupertinoContextMenu/view/cupertiono_ActionSheet.dart';
import 'CupertinoTabBar, CupertinoSlider&CupertinoSlidingSegmentedControl/provider/slider.dart';

import 'Cupertino_Widgets/provider/platfrom.dart';

import 'Cupertino_Widgets/utils/adaptive/adaptive.dart';
import 'Date PickeTime _Picker_Dialog_Box_using_Material_&_Cupertino/provider/dialog_provider.dart';
import 'Date PickeTime _Picker_Dialog_Box_using_Material_&_Cupertino/view/screen/CupertinoDatePicker.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavigationProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DialogProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PlatformProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SegmentProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => GalleryProvider(),
        )
      ],
      child:  MyApp(),
    ),
  );
}


//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     String ans = Platform.operatingSystem;
//     print(ans);
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData.light().copyWith(
//         datePickerTheme: DatePickerThemeData(
//           backgroundColor: Colors.blue.shade50,
//         ),
//       ),
//       home: const Gallery(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      // theme: CupertinoThemeData(
      //   brightness: Provider.of<SliderProvider>(context).themebrigtness,
      // ),
      debugShowCheckedModeBanner: false,
      home: DatePickerSCreen(),
    );
  }
}


