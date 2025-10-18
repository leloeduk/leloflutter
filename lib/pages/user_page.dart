import 'package:flutter/material.dart';
import 'package:leloflutter/data/data.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = Data().users;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(title: Text("Listes des utilisateurs"), centerTitle: true),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(10),
            height: 120,
            width: double.infinity,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (context, index) {
                final currentIndex = users[index];
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(currentIndex.image),
                      ),
                      Text(currentIndex.name),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final currentUserIndex = users[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(currentUserIndex.image),
                      ),

                      title: Text(
                        currentUserIndex.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        currentUserIndex.email,
                        style: TextStyle(color: Colors.grey),
                      ),

                      trailing: currentUserIndex.isOnline
                          ? Text("En ligne 🟢")
                          : Text("Hors ligne 🔴"),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
