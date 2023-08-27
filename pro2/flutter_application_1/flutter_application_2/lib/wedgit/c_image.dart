import 'package:flutter/material.dart';

class Circularimage extends StatelessWidget {
  const Circularimage({
    super.key,
    required this.name,
    required this.imagename,
  });
  final String name;
  final String imagename;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imagename),
          radius: 40,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(name)
      ],
    );
  }
}
