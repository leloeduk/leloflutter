import 'package:flutter/material.dart';

class StatePage extends StatefulWidget {
  const StatePage({super.key});

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  bool isChanged = false;

  @override
  void initState() {
    isChanged = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade900,
        title: Text(
          "Stateless Vs Stateful",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Photo : ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  isChanged ? " Image lelo " : "Image Logo ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: isChanged ? Colors.black : Colors.pink,
                  ),
                ),
              ],
            ),
            Image.asset(
              isChanged ? "lib/images/lelo.png" : "lib/images/logo.png",
              width: 300,
              height: 250,
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  isChanged = !isChanged;
                  print(isChanged);
                });
              },
              child: Text(
                "Changez Image ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
