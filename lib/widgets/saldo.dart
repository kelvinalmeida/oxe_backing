import 'package:flutter/material.dart';

class Saldo extends StatelessWidget {
  const Saldo({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    // var screenWidget = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight / 4.7,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 138, 115, 240),
          Color.fromARGB(255, 46, 12, 182),
        ]),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Bem vindo de Volta!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: screenHeight / 90,
          ),
          const Text(
            'Saldo:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: screenHeight / 100,
          ),
          const Text(
            '10.235',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
