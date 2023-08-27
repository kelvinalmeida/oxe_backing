import 'package:flutter/material.dart';
import 'package:oxe_backing/widgets/fotoPerfilNome.dart';

class AppBarPhoto extends StatelessWidget {
  const AppBarPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        const FotoPerfilNome(),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            color: Color.fromARGB(255, 69, 110, 254),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
