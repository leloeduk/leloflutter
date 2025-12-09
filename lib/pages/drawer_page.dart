import 'package:flutter/material.dart';
import 'package:leloflutter/pages/state_page.dart';
import 'package:leloflutter/pages/user_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: Column(
        children: [
          Container(
            height: 210,
            color: Colors.pink.shade800,

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage("lib/images/lelo.png"),
                  ),
                  Text(
                    "Lelo Eduk",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Lelomaurice2000@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Wrap(
              spacing: 10,
              runSpacing: 8,
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
                  title: Text("Favorite"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => UserPage()));
                  },
                  leading: Icon(Icons.people),
                  title: Text("Users"),
                  trailing: Icon(Icons.arrow_forward),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => StatePage()),
                    );
                  },
                  leading: Icon(Icons.settings),
                  title: Text("settings"),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),

          Spacer(),

          Padding(
            padding: const EdgeInsets.all(10),
            child: OutlinedButton(onPressed: () {}, child: Text("Déconnexion")),
          ),
        ],
      ),
    );
  }
}
