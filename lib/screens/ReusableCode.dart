import 'package:flutter/material.dart';

class ReUse extends StatelessWidget {
  ReUse({Key? key, required this.title, required this.value, this.child})
      : super(key: key);
  String title, value;
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
          ),
          Container(
            child: child,
          ),
          Text(value),
        ],
      ),
    );
  }
}
