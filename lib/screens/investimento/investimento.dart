import 'package:flutter/material.dart';
import 'package:oxe_backing/widgets/iconesWidget.dart';

class Investimento extends StatelessWidget {
  const Investimento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Investimentos',
          style: TextStyle(
            fontSize: 23,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconeWidget(
                  imagePath: 'lib/src/img/codigo.png',
                  title: 'Investir',
                  onShowButtonModal: () {
                    // showGerarBoleto(context);
                  },
                  listColors: const [
                    Color.fromARGB(255, 109, 110, 1),
                    Color.fromARGB(255, 94, 1, 81),
                  ],
                ),
                const SizedBox(
                  width: 35,
                ),
                IconeWidget(
                  imagePath: 'lib/src/img/receber_transfer.png',
                  title: 'Consultar Meus\nInvestimentos',
                  onShowButtonModal: () {
                    // showPagarViaBoleto(context);
                  },
                  listColors: const [
                    Color.fromARGB(255, 109, 110, 1),
                    Color.fromARGB(255, 94, 1, 81),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
