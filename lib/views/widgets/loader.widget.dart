import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final Color color;
  const Loader({
    Key? key,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: color,
    );
  }
}
