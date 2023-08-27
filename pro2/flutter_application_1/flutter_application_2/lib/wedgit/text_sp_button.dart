import 'package:flutter/material.dart';

class TextSpaceButton extends StatelessWidget {
  const TextSpaceButton({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(name),
          const SizedBox(
            width: 100,
          ),
          TextButton(onPressed: () {}, child: const Text("See all"))
        ],
      ),
    );
  }
}
