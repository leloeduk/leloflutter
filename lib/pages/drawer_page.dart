import 'package:flutter/material.dart';
import 'package:leloflutter/pages/state_page.dart';
import 'package:leloflutter/pages/user_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,

            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: AlignmentGeometry.bottomRight,
                colors: [
                  Colors.pink.shade200,
                  Colors.pink.shade500,
                  Colors.pink.shade900,
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage("lib/images/lelo.png"),
                  ),
                  Text(
                    "Lelo Eduk ",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                runSpacing: 16,
                spacing: 8,
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text(
                      "Favorite",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => UserPage()),
                      );
                    },
                    leading: Icon(Icons.person_2),
                    title: Text(
                      "Users",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => StatePage()),
                      );
                    },
                    leading: Icon(Icons.settings),
                    title: Text(
                      "Parametres",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ),

          Spacer(),
          Container(height: 100, color: Colors.amber),
        ],
      ),
    );
  }
}
