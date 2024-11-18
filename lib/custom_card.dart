import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 100),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 58, 58, 58),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12.0),
        color: const Color.fromARGB(255, 216, 255, 236),
      ),
    );
  }
}
