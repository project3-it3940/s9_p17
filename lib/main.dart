import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter Demo",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          children: [
            Expanded(
                child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: Colors.yellow.shade200,
                child: Text(
                    "Widget width\n" + constraints.maxWidth.toStringAsFixed(3)),
              ),
            )),
            Expanded(
                child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: Colors.cyan.shade700,
                child: Text(
                    "Widget width\n" + constraints.maxWidth.toStringAsFixed(3)),
              ),
            ))
          ],
        ));
  }
}
