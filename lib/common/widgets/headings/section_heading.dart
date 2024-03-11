import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}
