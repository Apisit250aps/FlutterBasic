import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/navigate/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        leading: null,
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                FontAwesomeIcons.ellipsisVertical,
              ),
            );
          })
        ],
        automaticallyImplyLeading: false,
      ),
      drawer: const BasicDrawer(),
      body: const Placeholder(),
    );
  }
}
