import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/navigate/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: Container(),
    );
  }
}
