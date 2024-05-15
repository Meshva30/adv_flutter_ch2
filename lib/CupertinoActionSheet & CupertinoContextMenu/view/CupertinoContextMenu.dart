import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/list.dart';

class CupertinoContextMenuScreen extends StatelessWidget {
  const CupertinoContextMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3 / 4,
              ),
              itemBuilder: (context, index) => gridviewImage(
                images[index]['img'],
                images[index]['name'],
                images[index]['number'],
              ),
              itemCount: images.length,
            ),
          ),
        ],
      ),
    );
  }


  Widget gridviewImage(String img, String name, String number) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: CupertinoContextMenu(
        actions: <Widget>[
          CupertinoContextMenuAction(
            isDefaultAction: true,
            trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
            child: const Text('Copy'),
            onPressed: () {},
          ),
          CupertinoContextMenuAction(
            isDefaultAction: true,
            trailingIcon: CupertinoIcons.share,
            child: const Text('Share'),
            onPressed: () {},
          ),
          CupertinoContextMenuAction(
            isDefaultAction: true,
            trailingIcon: CupertinoIcons.heart,
            child: const Text('Favorite'),
            onPressed: () {},
          ),
          CupertinoContextMenuAction(
            isDefaultAction: true,
            trailingIcon: CupertinoIcons.photo_on_rectangle,
            child: const Text('Show in All Photo'),
            onPressed: () {},
          ),
          CupertinoContextMenuAction(
            isDefaultAction: true,
            trailingIcon: CupertinoIcons.delete,
            child: const Text('Delete'),
            onPressed: () {},
          ),
        ],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(img),
                  ),
                ),
              ),
              Text(
                name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                number,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
