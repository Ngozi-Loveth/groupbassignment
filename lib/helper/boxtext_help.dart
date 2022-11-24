import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  const BigText({Key? key, required this.bigText}) : super(key: key);

  final String bigText;
  @override
  Widget build(BuildContext context) {
    return Text(
      bigText,
      style: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
    );
  }
}

class SmallText extends StatelessWidget {
  const SmallText({Key? key, required this.smallText}) : super(key: key);
  final String smallText;
  @override
  Widget build(BuildContext context) {
    return Text(
      smallText,
      style: const TextStyle(
          fontSize: 10, fontWeight: FontWeight.w300, color: Colors.black),
    );
  }
}
