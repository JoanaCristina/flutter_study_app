import 'package:flutter/material.dart';

class AppCircleButton extends StatelessWidget {
  const AppCircleButton(
      {required this.child,
      this.onTap,
      this.color,
      this.width=60,
      super.key});
  final Widget child;
  final Color? color;
  final double width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return  Material(
      type: MaterialType.transparency,
      clipBehavior: Clip.hardEdge,
        shape:  const CircleBorder(),
        child: InkWell(
          onTap: onTap,
          child: child));
  }
}
