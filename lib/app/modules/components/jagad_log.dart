import 'package:flutter/material.dart';

class Jagadlog extends StatelessWidget{
  final String imagePath;
  const Jagadlog({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        imagePath,
        height: 100,
      ),
    );
  }


}