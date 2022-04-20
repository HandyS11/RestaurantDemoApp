import 'package:flutter/material.dart';

class StartCell extends StatelessWidget {
  final double grade;

  const StartCell({Key? key, required this.grade}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.star,
            color: Colors.yellow,
            size: 15,
          ),
          Text(
            grade.toString(),
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
