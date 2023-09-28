import 'package:flutter/material.dart';

class PagarPorBoleto extends StatelessWidget {
  const PagarPorBoleto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 149, 0),
        elevation: 0,
        foregroundColor: Colors.white,
        title: const Text('Pagar por boleto'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              width: 250,
              child: TextField(
                decoration: InputDecoration(label: Text('Valor')),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Informações do Recebedor',
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              width: 250,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(label: Text("Conta")),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(label: Text("Agencia")),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 120,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(label: Text("Dígito")),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 230, 149, 0))),
                child: const Text(
                  'Gerar Boleto',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
