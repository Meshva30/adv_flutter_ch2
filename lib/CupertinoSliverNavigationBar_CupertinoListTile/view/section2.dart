
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Cupertino Lists Enhanced'),
          ),
          SliverFillRemaining(
            child: Column(
              children: [
                CupertinoListSection.insetGrouped(
                  header: Text('SINGLE SELECTION',style: TextStyle(fontSize:18,color: CupertinoColors.inactiveGray),),
                  dividerMargin: 0,
                  footer: Text('Choose a single item from a list of options',style: TextStyle(color: CupertinoColors.inactiveGray),),
                  children: <CupertinoListTile> [
                    CupertinoListTile.notched(
                      title: Text('Off'),
                      trailing: Icon(CupertinoIcons.checkmark_alt),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Wifi'),
                    ),
                    CupertinoListTile.notched(title: Text('Mobile Data')),
                  ],
                ),
                CupertinoListSection.insetGrouped(
                  header: Text('MULTI SELECTION',style: TextStyle(fontSize:18,color: CupertinoColors.inactiveGray),),
                  footer: Text('Choose multi item from a list of options',style: TextStyle(color: CupertinoColors.inactiveGray),),
                  children: <CupertinoListTile> [
                    CupertinoListTile.notched(
                      title: Text('Option one'),
                      subtitle: Text('Disabled and Selected'),
                      leading: Icon(CupertinoIcons.checkmark_alt),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Option two'),
                      subtitle: Text('With subtitle'),
                      leading: Container(),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Option three'),
                      leading:Icon(CupertinoIcons.checkmark_alt),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Option four'),
                      leading:Container(),
                    ),
                    CupertinoListTile.notched(
                      title: Text('Option five'),
                      subtitle: Text('Disabled and not Selected'),
                      leading:Container(),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
