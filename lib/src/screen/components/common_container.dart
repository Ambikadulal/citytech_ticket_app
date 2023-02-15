import 'package:flutter/material.dart';

class CommonHomePageContainer extends StatelessWidget {
  final String statusText;
  final Widget icon;
  final String countText;
  final GestureTapCallback? onTap;

  const CommonHomePageContainer(
      {Key? key, required this.statusText, required this.icon, required this.countText, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle commonStyle = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 100,
        width: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), border: Border.all(color: Colors.grey)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 10,
            ),
            icon,
            Text(
              statusText,
              style: commonStyle,
            ),
            Text(
              countText,
              style: commonStyle,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
