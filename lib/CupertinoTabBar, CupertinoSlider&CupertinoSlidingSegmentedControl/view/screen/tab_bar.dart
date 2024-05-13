import 'package:flutter/cupertino.dart';

import '../../utils/screenlist.dart';

class Tab_bar extends StatelessWidget {
  const Tab_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('KindaCode.com')),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings)),
          ],
        ),
        tabBuilder: (context, index) {
          return Stack(
            children: [
              Center(
                child: Text(Screen[index]),
              ),
            ],
          );
        },
      ),
    );
  }
}
