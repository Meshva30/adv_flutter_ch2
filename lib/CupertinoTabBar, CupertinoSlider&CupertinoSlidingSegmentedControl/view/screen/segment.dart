import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../provider/segmentprovider.dart';
import '../../utils/screenlist.dart';

class Segment extends StatelessWidget {
  const Segment({Key? key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: CupertinoSlidingSegmentedControl(
          thumbColor: CupertinoColors.activeBlue,
          groupValue: Provider.of<SegmentProvider>(context).index.toString(),
          onValueChanged: (value) {
            Provider.of<SegmentProvider>(context, listen: false)
                .Changeindex(value!);
          },
          children: {
            '0': Text('Head 1'),
            '1': Text('Head 2'),
            '2': Text('Head 3'),
            '3': Text('Head 4'),
          },
        ),
      ),
      child: Center(
          child: Text(Screen1[Provider.of<SegmentProvider>(context).index])),
    );
  }
}
