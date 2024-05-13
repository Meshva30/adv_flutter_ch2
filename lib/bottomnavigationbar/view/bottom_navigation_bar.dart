import 'package:adv_flutter_ch2/bottomnavigationbar/provider/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';

class Bottom_Navigation_bar extends StatelessWidget {
  const Bottom_Navigation_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: ResponsiveNavigationBar(
        selectedIndex: Provider.of<BottomNavigationProvider>(context).BottomIndex,
        textStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        navigationBarButtons: [
          NavigationBarButton(
            text: 'Home',
            icon: Icons.home,
            backgroundGradient: LinearGradient(
              colors: [Colors.yellow, Colors.green, Colors.blue],
            ),
          ),
          NavigationBarButton(
            text: 'Search',
            icon: Icons.search,
            backgroundGradient: LinearGradient(
              colors: [Colors.yellow, Colors.green, Colors.blue],
            ),
          ),
          NavigationBarButton(
            text: 'Add',
            icon: Icons.add_box_outlined,
            backgroundGradient: LinearGradient(
              colors: [Colors.yellow, Colors.green, Colors.blue],
            ),
          ),
          NavigationBarButton(
            text: 'Reels',
            icon: Icons.video_call,
            backgroundGradient: LinearGradient(
              colors: [Colors.yellow, Colors.green, Colors.blue],
            ),
          ),
          NavigationBarButton(
           text: 'Profile',
            icon: Icons.person,
            backgroundGradient: LinearGradient(
              colors: [Colors.yellow, Colors.green, Colors.blue],
            ),
          ),
        ],
        onTabChange: (value) {
          Provider.of<BottomNavigationProvider>(context,listen: false).ChangeBottomIndex(value);
        },
      ),
    );
  }
}
