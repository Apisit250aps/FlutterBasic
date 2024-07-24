import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/base/layouts/gridview.dart';
import 'package:flutter_basic/widgets/base/layouts/listview.dart';
import 'package:flutter_basic/widgets/navigate/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MixLayoutPage extends StatefulWidget {
  const MixLayoutPage({super.key});

  @override
  State<MixLayoutPage> createState() => _MixLayoutPageState();
}

class _MixLayoutPageState extends State<MixLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mix Layout"),
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
        scrolledUnderElevation: 0,
        elevation: 0,
      ),
      drawer: const BasicDrawer(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const Column(
          children: [
            Expanded(child: BasicGridView()),
            Expanded(child: BasicListView())
          ],
        ),
      ),
    );
  }
}
