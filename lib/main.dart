
import 'dart:io';

import 'package:adv_flutter_ch2/CupertinoTabBar,%20CupertinoSlider&CupertinoSlidingSegmentedControl/provider/segmentprovider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'CupertinoSliverNavigationBar_CupertinoListTile/view/custom_scroll.dart';
import 'CupertinoSliverNavigationBar_CupertinoListTile/view/section.dart';
import 'CupertinoSliverNavigationBar_CupertinoListTile/view/section2.dart';
import 'CupertinoTabBar, CupertinoSlider&CupertinoSlidingSegmentedControl/provider/slider.dart';
import 'CupertinoTabBar, CupertinoSlider&CupertinoSlidingSegmentedControl/view/screen/segment.dart';
import 'CupertinoTabBar, CupertinoSlider&CupertinoSlidingSegmentedControl/view/screen/silder.dart';
import 'CupertinoTabBar, CupertinoSlider&CupertinoSlidingSegmentedControl/view/screen/tab_bar.dart';
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
        ),
        ChangeNotifierProvider(
          create: (context) => SegmentProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SliderProvider(),
        ),
      ],
      child: const MyApp(),
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
//       home: const CustomScroll(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Provider.of<SliderProvider>(context).themebrigtness,
      ),
      debugShowCheckedModeBanner: false,
      home: Tab_bar(),
    );
  }
}
