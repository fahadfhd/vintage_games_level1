import 'package:flutter/material.dart';
import 'package:vintage_games/utils/extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'vintage_games',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'vintage_games'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: List.generate(15, (index) {
                return Card(
                  color: Colors.blue,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1, right: 1),
                      child: Image(
                        image: AssetImage('retro'.asAssetpng()),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              }),
            )),
      ),
    );
  }
}
