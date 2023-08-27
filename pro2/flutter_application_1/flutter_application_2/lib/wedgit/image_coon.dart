import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.image,
    required this.name,
    required this.describtion,
    required this.price,
  });
  final String image;
  final String name;
  final String describtion;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), // Image border
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Text(name),
        Text(
          describtion,
          style: const TextStyle(fontWeight: FontWeight.w100),
        ),
        Text("$price/night"),
      ],
    );
  }
}
