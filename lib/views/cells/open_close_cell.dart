import 'package:flutter/material.dart';

class OpenCloseCell extends StatelessWidget {
  final bool isOpen;

  const OpenCloseCell({Key? key, required this.isOpen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Center(
        child: Text(
          (isOpen) ? "OPEN" : "CLOSE",
          style: TextStyle(
              color: (isOpen) ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
