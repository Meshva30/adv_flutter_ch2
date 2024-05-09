import 'package:flutter/cupertino.dart';

class Section extends StatelessWidget {
  const Section({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          slivers: [
            CupertinoSliverNavigationBar(
              largeTitle: Text('My People'),
              //middle: Text('My People'),
            ),
            SliverFillRemaining(
              child: Column(
                children: [
                  CupertinoListSection(
                    children: [
                      CupertinoListTile.notched(
                        title: Text('General'),
                        leading: Image.asset('assets/img/setting.png'),
                        trailing: Icon(CupertinoIcons.right_chevron,color: CupertinoColors.inactiveGray,),
                      ),
                      CupertinoListTile.notched(
                        title: Text('Display & Brightness'),
                        leading: Image.asset('assets/img/text.png'),
                        trailing: Icon(CupertinoIcons.right_chevron,color: CupertinoColors.inactiveGray,),
                      ),
                      CupertinoListTile.notched(
                        title: Text('Wallpaper'),
                        leading: Image.asset('assets/img/wallpepar.png'),
                        trailing: Icon(CupertinoIcons.right_chevron,color: CupertinoColors.inactiveGray,),
                      ),
                      CupertinoListTile.notched(
                        title: Text('Sounds'),
                        leading: Image.asset('assets/img/sound.png'),
                        trailing: Icon(CupertinoIcons.right_chevron,color: CupertinoColors.inactiveGray,),
                      ),
                      CupertinoListTile.notched(
                        title: Text('Touch ID & Password'),
                        leading: Image.asset('assets/img/fingar.png'),
                        trailing: Icon(CupertinoIcons.right_chevron,color: CupertinoColors.inactiveGray,),
                      ),
                      CupertinoListTile.notched(
                        title: Text('Privacy'),
                        leading: Image.asset('assets/img/p1.png'),
                        trailing: Icon(CupertinoIcons.right_chevron,color: CupertinoColors.inactiveGray,),
                      ),
                    ],
                  ),
                  CupertinoListSection(
                    children: [
                      CupertinoListTile.notched(
                        title: Text('iCloud'),
                        subtitle: Text('Sarah@9to5mac.com'),
                        leading: Image.asset('assets/img/cloud.png'),
                        trailing: Icon(
                          CupertinoIcons.right_chevron,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      CupertinoListTile.notched(
                        title: Text('iTunes & App store'),
                        leading: Image.asset('assets/img/app.png'),
                        trailing: Icon(
                          CupertinoIcons.right_chevron,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                      CupertinoListTile.notched(
                        title: Text('Passbook & Apple Pay'),
                        leading: Image.asset('assets/img/book.png'),
                        trailing: Icon(
                          CupertinoIcons.right_chevron,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                    ],
                  ),
                  CupertinoListSection(
                    children: [
                      CupertinoListTile.notched(
                        title: Text('Mail,contacts,Calendars'),
                        subtitle: Text('Sarah@9to5mac.com'),
                        leading: Image.asset('assets/img/mail.png'),
                        trailing: Icon(CupertinoIcons.right_chevron,color: CupertinoColors.inactiveGray,),
                      ),
                      CupertinoListTile.notched(
                        title: Text('Notes'),
                        leading: Image.asset('assets/img/notes.png'),
                        trailing: Icon(CupertinoIcons.right_chevron,color: CupertinoColors.inactiveGray,),
                      ),
                      CupertinoListTile.notched(
                        title: Text(' Reminders'),
                        leading: Image.asset('assets/img/reminder.png'),
                        trailing: Icon(CupertinoIcons.right_chevron,color: CupertinoColors.inactiveGray,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
