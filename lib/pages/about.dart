import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/navigate/drawer.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        centerTitle: true,
      ),
      drawer: const BasicDrawer(),
      body: Container(),
    );
  }
}