import 'package:flutter/material.dart';
import 'package:leloflutter/pages/drawer_page.dart';
import 'package:leloflutter/pages/home_page.dart';
import 'package:leloflutter/pages/state_page.dart';
import 'package:leloflutter/pages/user_page.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedCurrentIndex = 0;

  final List<Widget> screens = [HomePage(), UserPage(), StatePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.pink.shade800,
      ),
      drawer: DrawerPage(),
      body: screens[selectedCurrentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedCurrentIndex,
        indicatorColor: Colors.pink.shade800,
        onDestinationSelected: (value) {
          setState(() {
            selectedCurrentIndex = value;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person_2), label: "Users"),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Parametres",
          ),
        ],
      ),
    );
  }
}
