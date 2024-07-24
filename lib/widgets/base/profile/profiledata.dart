import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/base/profile/profilecontact.dart';
import 'package:flutter_basic/widgets/base/profile/profileimage.dart';
import 'package:flutter_basic/widgets/base/profile/profileinfo.dart';

class ProfileData extends StatelessWidget {
  const ProfileData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: const Column(
        children: [
          ProfileImage(),
          ProfileInfo(),
          ProfileContact()
        ],
      ),
    );
  }
}
