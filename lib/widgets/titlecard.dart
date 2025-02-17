import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(child: Text("FC")),
        SizedBox(width: 10),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: const Color.fromARGB(255, 5, 95, 151),
          ),
        ),
      ],
    );
  }
}
