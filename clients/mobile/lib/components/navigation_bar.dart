import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: Center(child: Placeholder()), // Added a placeholder body
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 20,
            ),
            child: Container(
              child: const GNav(
                backgroundColor: Colors.transparent, // Set to transparent
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.grey,
                gap: 4,
                padding: EdgeInsets.all(15),
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.map,
                    text: 'Map',
                  ),
                  GButton(
                    icon: Icons.favorite,
                    text: 'Favourite',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
