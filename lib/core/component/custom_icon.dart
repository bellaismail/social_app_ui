import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
    required this.iconData,
    this.color,
    this.size,
  }) : super(key: key);
  final IconData iconData;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: color,
      size: size,
    );
  }
}
