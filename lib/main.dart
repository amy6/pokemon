import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
  title: "PokeApp",
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  var url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  void fetchData() async {
    var response = await http.get(url);
    print(response);
  }


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

