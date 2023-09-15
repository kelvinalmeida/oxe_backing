import 'package:flutter/material.dart';
import 'package:oxe_backing/screens/docs.dart';
import 'package:oxe_backing/widgets/iconesTransfer.dart';
import 'package:oxe_backing/screens/pix.dart';

class Transferencia extends StatelessWidget {
  const Transferencia({super.key});

  void showPix(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (ctx) => const Pix(),
      ),
    );
  }

  void showDocs(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (ctx) => const Docs(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tranferencias'),
        backgroundColor: const Color.fromARGB(255, 47, 45, 190),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Selcione o modo de\n transferencia:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconesTransfer(
                  imagePath: 'lib/src/img/pix.webp',
                  title: "PIX",
                  onShowButtonModal: () {
                    showPix(context);
                  },
                  listColors: const [
                    Color.fromARGB(255, 24, 4, 136),
                    Color.fromARGB(255, 129, 123, 219),
                  ],
                ),
                const SizedBox(
                  width: 25,
                ),
                IconesTransfer(
                  imagePath: 'lib/src/img/ted_doc2.png',
                  title: "DOC/TED",
                  onShowButtonModal: () {
                    showDocs(context);
                  },
                  listColors: const [
                    Color.fromARGB(255, 24, 4, 136),
                    Color.fromARGB(255, 129, 123, 219),
                  ],
                ),
                const SizedBox(
                  width: 25,
                ),
                IconesTransfer(
                  imagePath: 'lib/src/img/receber.png',
                  title: "RECEBER",
                  onShowButtonModal: () {
                    showPix(context);
                  },
                  listColors: const [
                    Color.fromARGB(255, 24, 4, 136),
                    Color.fromARGB(255, 129, 123, 219),
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
