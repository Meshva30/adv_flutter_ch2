
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../provider/platfrom.dart';
import '../material_screen/componects/list_tiles.dart';
import 'componects/activity_indiacator.dart';
import 'componects/date_picker.dart';
import 'componects/dialogs.dart';
import 'componects/list_tile.dart';
import 'componects/time_picker.dart';

class IosScreen extends StatelessWidget {
  const IosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('iOS Screen',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
        trailing: CupertinoSwitch(
          value: Provider.of<PlatformProvider>(context, listen: true).isAndroid,
          onChanged: (value) {
            Provider.of<PlatformProvider>(context,listen: false).platform(value);
          },),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            activityIndiacator(),
            button(context),
            datePicker(),
            listTile(),
            timePicker(),
          ],
        ),
      ),
    );
  }
}
