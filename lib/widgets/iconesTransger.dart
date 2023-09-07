import 'package:flutter/material.dart';

class IconesTransfer extends StatelessWidget {
  const IconesTransfer({
    super.key,
    required this.imagePath,
    required this.title,
  });
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 94, 185, 99),
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
