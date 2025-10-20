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
    isChanged = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          "Stateless et Stateful",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink.shade900,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Photo : ",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  Text(
                    isChanged ? "Image lelo " : "Image logo",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Image.asset(
                isChanged ? "lib/images/lelo.png" : "lib/images/logo.png",
                height: 200,
                width: 300,
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    isChanged = !isChanged;
                  });
                },
                child: Text(
                  "Changez image ",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
