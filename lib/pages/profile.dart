import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/base/profile/profiledata.dart';
import 'package:flutter_basic/widgets/navigate/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ProfileData(),
          ],
        ),
      ),
    );
  }
}
