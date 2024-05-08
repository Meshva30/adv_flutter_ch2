

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../provider/platfrom.dart';
import '../cupertion_screen/componects/list_tile.dart';
import 'componects/indicator.dart';
import 'componects/material_button.dart';

class AndroidScreen extends StatelessWidget {
  const AndroidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.grey,
        title: Text(
          'Android Screen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
        ),
        centerTitle: true,
        actions: [
          Switch(
            value:
            Provider.of<PlatformProvider>(context, listen: true).isAndroid,
            onChanged: (value) {
              Provider.of<PlatformProvider>(context, listen: false)
                  .platform(value);
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          indicator(),
          listTile(),
          materialButton(context),
        ],
      ),
    );
  }
}
