import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileContact extends StatefulWidget {
  const ProfileContact({super.key});

  @override
  State<ProfileContact> createState() => _ProfileContactState();
}

class _ProfileContactState extends State<ProfileContact> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconContact(
          icon: FontAwesomeIcons.facebookF,
          color: Colors.blue.shade600,
          background: Colors.blue.shade50,
        ),
        IconContact(
          icon: FontAwesomeIcons.instagram,
          color: Colors.red.shade600,
          background: Colors.red.shade50,
        ),
        const IconContact(
          icon: FontAwesomeIcons.github,
          color: Colors.white,
          background: Colors.black,
        ),
      ],
    );
  }
}

class IconContact extends StatefulWidget {
  final IconData icon;
  final Color color;
  final Color background;
  const IconContact({
    super.key,
    required this.icon,
    required this.color,
    required this.background,
  });

  @override
  State<IconContact> createState() => _IconContactState();
}

class _IconContactState extends State<IconContact> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: widget.background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          widget.icon,
          color: widget.color,
          size: 28,
        ),
      ),
    );
  }
}
