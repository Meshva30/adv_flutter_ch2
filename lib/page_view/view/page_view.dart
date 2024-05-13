import 'package:adv_flutter_ch2/page_view/view/intro1.dart';
import 'package:adv_flutter_ch2/page_view/view/intro2.dart';
import 'package:adv_flutter_ch2/page_view/view/intro3.dart';
import 'package:flutter/material.dart';
class Page_View extends StatelessWidget {
  const Page_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Intro1(),
          Intro2(),
          Intro3(),
        ],
      ),
    );
  }
}
