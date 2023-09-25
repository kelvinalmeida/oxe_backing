import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seu Perfil'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const CircleAvatar(
              radius: 80,
              backgroundColor: Color.fromARGB(255, 69, 110, 254),
              child: CircleAvatar(
                  radius: 76,
                  backgroundImage: AssetImage(
                    'lib/src/img/man1.jpg',
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Nome: Lucas Monteiro',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Data de Nacimento: 16/05/1996',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Conta / Agencia',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '5354654 5665-5',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.red[400],
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Bloquear Conta',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.red[800],
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Fechar Conta',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
