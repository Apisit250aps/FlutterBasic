import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/about.dart';
import 'package:flutter_basic/pages/home.dart';
import 'package:flutter_basic/pages/mixlayout.dart';
import 'package:flutter_basic/pages/profile.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:get/get.dart';

class BasicDrawer extends StatefulWidget {
  const BasicDrawer({super.key});

  @override
  State<BasicDrawer> createState() => _BasicDrawerState();
}

class _BasicDrawerState extends State<BasicDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Boxicons.bx_home),
            onTap: () {
              Get.to(const HomePage());
            },
          ),
          ListTile(
            title: const Text('About'),
            leading: const Icon(Boxicons.bx_book),
            onTap: () {
              Get.to(const AboutPage());
            },
          ),
          ListTile(
            title: const Text('Profile'),
            leading: const Icon(Boxicons.bx_user),
            onTap: () {
              Get.to(const ProfilePage());
            },
          ),
          ListTile(
            title: const Text('Mix Layout'),
            leading: const Icon(Boxicons.bx_layout),
            onTap: () {
              Get.to(const MixLayoutPage());
            },
          ),
        ],
      ),
    );
  }
}
