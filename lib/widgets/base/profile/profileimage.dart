import 'package:flutter/material.dart';


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
