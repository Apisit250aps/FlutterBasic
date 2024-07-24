import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/navigate/drawer.dart';

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
      ),
      drawer: const BasicDrawer(),
      body: const SingleChildScrollView(
        child: Column(
          children: [ProfileData()],
        ),
      ),
    );
  }
}

class ProfileData extends StatefulWidget {
  const ProfileData({super.key});

  @override
  State<ProfileData> createState() => _ProfileDataState();
}

class _ProfileDataState extends State<ProfileData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: const Column(
        children: [ProfileImage()],
      ),
    );
  }
}

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      // padding: const EdgeInsets.all(10),
      child: ClipOval(
        // borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://shorturl.at/cLfo7',
          width: 175,
          height: 175,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
