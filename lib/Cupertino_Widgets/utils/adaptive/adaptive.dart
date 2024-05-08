

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/platfrom.dart';
import '../../view/screen/cupertion_screen/cupertion_screen.dart';
import '../../view/screen/material_screen/material_screen.dart';


class AdaptiveScreen extends StatelessWidget {
  const AdaptiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if(Provider.of<PlatformProvider>(context, listen: true).isAndroid){
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AndroidScreen(),
      );
    }
    else{
      return const CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: IosScreen(),
      );
    }
  }
}
