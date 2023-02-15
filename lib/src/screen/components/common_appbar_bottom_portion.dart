import 'package:flutter/material.dart';

class CommonAppbarBottomPortion extends StatelessWidget {
  final String leadingText;

  const CommonAppbarBottomPortion({Key? key, required this.leadingText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                leadingText,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              color: Colors.grey,
            ),
            width: 100,
            height: 35,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.line_axis),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
