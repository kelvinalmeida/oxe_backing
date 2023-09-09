import 'package:flutter/material.dart';

class IconesTransfer extends StatelessWidget {
  const IconesTransfer({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onShowButtonModal,
  });
  final String imagePath;
  final String title;
  final void Function() onShowButtonModal;

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: onShowButtonModal,
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 24, 4, 136),
                Color.fromARGB(255, 129, 123, 219),
              ]),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              imagePath,
              height: screenwidth / 5,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
