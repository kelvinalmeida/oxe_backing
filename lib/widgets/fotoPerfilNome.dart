import 'package:flutter/material.dart';
import 'package:oxe_backing/screens/perfil.dart';

class FotoPerfilNome extends StatelessWidget {
  const FotoPerfilNome({super.key});

  void showPerfil(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => const Perfil()));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            showPerfil(context);
          },
          child: const CircleAvatar(
            radius: 26,
            backgroundColor: Color.fromARGB(255, 69, 110, 254),
            child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(
                  'lib/src/img/man1.jpg',
                )),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
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
