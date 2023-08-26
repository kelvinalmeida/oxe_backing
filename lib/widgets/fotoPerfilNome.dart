import 'package:flutter/material.dart';

class FotoPerfilNome extends StatelessWidget {
  const FotoPerfilNome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 26,
          backgroundColor: Color.fromARGB(255, 69, 110, 254),
          child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                'lib/src/img/man1.jpg',
              )),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Lucas Monteiro',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
