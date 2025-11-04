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
            color: Colors.pink.shade900,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage("lib/images/lelo.png"),
                  ),
                  Text(
                    "LeloEduk",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "LeloEduk2025@gmail.com",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              runSpacing: 8,
              spacing: 6,
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
                  onTap: () {},
                  leading: Icon(Icons.favorite),
                  title: Text("favorite"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => UserPage()));
                  },
                  leading: Icon(Icons.person_2),
                  title: Text("Users"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => StatePage()),
                    );
                  },
                  leading: Icon(Icons.settings),
                  title: Text("Parametres"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(12),
            child: OutlinedButton(onPressed: () {}, child: Text("Déconnexion")),
          ),
        ],
      ),
    );
  }
}
