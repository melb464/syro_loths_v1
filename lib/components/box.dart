import 'package:flutter/material.dart';

class MyBox extends StatelessWidget{
  final Widget? child;
  final Color? color;
  const MyBox({super.key, this.child, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      width: 200,
      height: 200,
      child: child,
    );

  }

}