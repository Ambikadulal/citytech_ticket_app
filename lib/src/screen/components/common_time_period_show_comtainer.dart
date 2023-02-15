import 'package:flutter/material.dart';

class CommonTimePeriodShowContainer extends StatelessWidget {
  const CommonTimePeriodShowContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey.shade300,
        shape: BoxShape.rectangle,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("   Day"),
          Text("Week"),
          Text("Month"),
          Text("Year   "),
        ],
      ),
    );
  }
}
