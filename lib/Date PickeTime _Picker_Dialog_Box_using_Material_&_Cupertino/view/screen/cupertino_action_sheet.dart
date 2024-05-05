import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionSheet extends StatelessWidget {
  const ActionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Action Sheet',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) {
                return CupertinoActionSheet(
                  title: const Text(
                    'Favorite Dessert',
                    style: TextStyle(fontSize: 16),
                  ),
                  message: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Text(
                      'Please select the best dessert from the\noptions below.',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Profiteroles',
                        style: TextStyle(color: Colors.blue, fontSize: 23),
                      ),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Cannolis',
                        style: TextStyle(color: Colors.blue, fontSize: 23),
                      ),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Trifle',
                        style: TextStyle(color: Colors.blue, fontSize: 23),
                      ),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    isDefaultAction: true,
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            );
          },
          child:  Icon(Icons.text_fields,size: 38,)
        ),
      ),
    );
  }
}
