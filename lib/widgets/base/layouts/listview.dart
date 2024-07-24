import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class BasicListView extends StatelessWidget {
  const BasicListView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> names = [
      'John Doe',
      'Jane Smith',
      'Michael Johnson',
      'Emily Davis',
      'William Brown',
      'Olivia Wilson',
      'James Jones',
      'Sophia Garcia',
      'Benjamin Miller',
      'Ava Martinez',
      'Lucas Anderson',
      'Isabella Taylor',
      'Henry Thomas',
      'Mia Moore',
      'Alexander Lee',
      'Charlotte Harris',
      'Daniel Clark',
      'Amelia Robinson',
      'Matthew Lewis',
      'Harper Walker',
    ];
    return ListView.builder(
      itemCount: names.length, // ใช้จำนวนของรายการ
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(names[index]),
          leading: const Icon(Boxicons.bx_user),
          subtitle: Text(names[index]),
          trailing: const Icon(Boxicons.bx_plus),
        );
      },
    );
  }
}
