import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/base/displays/CounterDisplay.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        elevation: 0,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          children: <Widget>[
            CounterDisplay(counter: _counter),
            CounterDisplay(counter: _counter - 5),
            CounterDisplay(counter: _counter - 10),
            CounterDisplay(counter: _counter - 15),
            CounterDisplay(counter: _counter - 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.blueAccent,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
