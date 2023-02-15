import 'package:flutter/material.dart';

class CommonIconText extends StatelessWidget {
  final String text;

  const CommonIconText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const Icon(
            Icons.circle,
            size: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}

class CommonIconTextColumn extends StatelessWidget {
  final String text;
  final Widget icon;

  const CommonIconTextColumn({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          icon,
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
