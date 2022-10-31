import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class BodySmallText extends StatelessWidget {
  final String text;
  const BodySmallText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodySmall);
  }
}

class BodySmallTextBlack extends StatelessWidget {
  final String text;
  const BodySmallTextBlack({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyles.bodySmallBlack);
  }
}
