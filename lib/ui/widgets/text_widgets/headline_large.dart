import 'package:flutter/material.dart';

class HeadlineLarge extends StatelessWidget {
  final String text;
  const HeadlineLarge(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
