import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final void Function()? onTap;
  final Color? bgColor;

  const CustomCard({Key? key, required this.child, this.onTap, this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Card(
          color: bgColor,
          margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Center(child: child),
        ),
      ),
    );
  }
}