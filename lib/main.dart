import 'package:flutter/material.dart';
import 'package:leloflutter/pages/custom_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LeloFlutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey.shade200),
        useMaterial3: true,
      ),
      home: CustomBottomBar(),
    );
  }
}
