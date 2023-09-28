import 'package:flutter/material.dart';
import 'package:oxe_backing/screens/gerar_boleto.dart';
import 'package:oxe_backing/screens/pagar_por_boleto.dart';
import 'package:oxe_backing/widgets/iconesWidget.dart';

class Pagamento extends StatelessWidget {
  const Pagamento({super.key});

  void showGerarBoleto(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (ctx) => GerarBoleto(),
      ),
    );
  }

  void showPagarViaBoleto(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (ctx) => PagarPorBoleto(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagamentos'),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            const Text(
              'Escolha a Forma de Pagamento',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconeWidget(
                  imagePath: 'lib/src/img/codigo.png',
                  title: 'Gerar Boleto',
                  onShowButtonModal: () {
                    showGerarBoleto(context);
                  },
                  listColors: const [
                    Color.fromARGB(255, 37, 83, 39),
                    Color.fromARGB(255, 228, 127, 33)
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                IconeWidget(
                  imagePath: 'lib/src/img/receber_transfer.png',
                  title: 'Pagar Por Boleto',
                  onShowButtonModal: () {
                    showPagarViaBoleto(context);
                  },
                  listColors: const [
                    Color.fromARGB(255, 37, 83, 39),
                    Color.fromARGB(255, 228, 127, 33)
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
