import 'package:flutter/material.dart';

class Servicos extends StatelessWidget {
  const Servicos({
    super.key,
    required this.nome,
    required this.color1,
    required this.color2,
    required this.iconOfService,
  });

  final String nome;
  final Color color1;
  final Color color2;
  final IconData iconOfService;

  @override
  Widget build(BuildContext context) {
    var screeHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {
        print('hello');
      },
      child: Container(
        height: screeHeight / 5,
        width: screeHeight / 4.4,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              iconOfService,
              size: 70,
              color: Colors.white,
            ),
            const Spacer(),
            Text(
              nome,
              style: TextStyle(
                fontSize: screeHeight / 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
