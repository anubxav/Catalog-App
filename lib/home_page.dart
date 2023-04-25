import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Anubhav";
    return Scaffold(
      appBar: AppBar(
        title: Text("Test App"),
      ),
      body: Center(
        child: Text("Welocome to $days days of Flutter by $name"),
      ),
      drawer: Drawer(),
    );
  }
}
