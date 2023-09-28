import 'dart:ffi';

import 'package:flutter/material.dart';

class IconeWidget extends StatelessWidget {
  const IconeWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onShowButtonModal,
    required this.listColors,
    this.containerSize,
    this.fontSize,
  });
  final String imagePath;
  final String title;
  final void Function() onShowButtonModal;
  final List<Color> listColors;
  final double? containerSize;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: onShowButtonModal,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: listColors),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              imagePath,
              height: screenwidth / (containerSize ?? 5),
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize ?? 20,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
