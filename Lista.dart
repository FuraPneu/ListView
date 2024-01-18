// ignore_for_file: unnecessary_new, library_private_types_in_public_api, non_constant_identifier_names, unused_element, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/item.dart';

void main() => runApp(const App());


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 246, 1, 181)),
        useMaterial3: true,
      ),
      home : HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  var items = new List<Item>.empty();

  HomePage({super.key}) {
    items = [];
    items.add(Item(title: "Item 1", done: false));
    items.add(Item(title: "Item 2", done: true));
    items.add(Item(title: "Item 3", done: false));
  }
    
  @override   
  _HomePageState createState() => _HomePageState();
}
  
class _HomePageState extends State<HomePage> {   
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Demo App by Ellen"),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, int index){
          return Text(widget.items[index].title);
        },
      ),
    );
  }
}