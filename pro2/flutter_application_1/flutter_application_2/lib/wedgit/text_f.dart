import 'package:flutter/material.dart';

class TextFeldInput extends StatelessWidget {
  const TextFeldInput({
    super.key,
    required this.name,
    required this.iconname,
    required this.namelebel,
    required this.size,
    this.hight,
    this.controller,
  });
  final String name;
  final IconData iconname;
  final String namelebel;
  final double size;
  final double? hight;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: size,
        height: hight,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: name,
              labelText: namelebel,
              prefixIcon: Icon(iconname),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black))),
        ),
      ),
    );
  }
}
