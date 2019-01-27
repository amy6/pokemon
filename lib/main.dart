import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "PokeApp",
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PokeApp"),
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      backgroundColor: Colors.cyan,
      child: Icon(Icons.refresh)),
    );
  }
}

