import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/list.dart';

class Sliver_Widgets extends StatelessWidget {
  const Sliver_Widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 150,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/img/m1.jpg',
                fit: BoxFit.cover,
              ),
              title: Text('Sliver AppBar'),
            ),
          ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) => ColorContinar(
          //       ColorList[index]['color']
          //     ),
          //     childCount: ColorList.length,
          //   ),
          // ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ColorContinar(
                ColorList[index]['color'],
              ),
              childCount: ColorList.length
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
          ),
        ],
      ),
    );
  }

  Container ColorContinar(Color color) {
    return Container(
      height: 150,
      width: 200,
      decoration: BoxDecoration(color: color),
    );
  }
}
