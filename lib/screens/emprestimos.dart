import 'package:flutter/material.dart';
import 'package:oxe_backing/widgets/iconesTransfer.dart';

class Emprestimo extends StatelessWidget {
  const Emprestimo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Emprestimo'),
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconesTransfer(
                    imagePath: 'lib/src/img/receber_transfer.png',
                    title: 'Receber\nTransferência',
                    onShowButtonModal: () {},
                    listColors: const [
                      Color.fromARGB(255, 32, 63, 33),
                      Color.fromARGB(255, 135, 151, 42),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconesTransfer(
                    imagePath: 'lib/src/img/receber_transfer.png',
                    title: 'Ver Emprestimos\ndo Transferência',
                    onShowButtonModal: () {},
                    listColors: const [
                      Color.fromARGB(255, 32, 63, 33),
                      Color.fromARGB(255, 135, 151, 42),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
