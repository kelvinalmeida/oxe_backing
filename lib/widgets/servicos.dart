import 'package:flutter/material.dart';

class Servicos extends StatelessWidget {
  const Servicos({
    super.key,
    required this.nome,
    required this.color1,
    required this.color2,
  });

  final String nome;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    var screeHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screeHeight / 5,
      width: screeHeight / 3.8,
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )),
      child: Text(
        nome,
        style: const TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
      ),
    );
  }
}
