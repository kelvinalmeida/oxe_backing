import 'package:flutter/material.dart';
import 'package:oxe_backing/widgets/iconesTransger.dart';

class Transferencia extends StatelessWidget {
  const Transferencia({super.key});

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tranferencias'),
        backgroundColor: const Color.fromARGB(255, 138, 23, 158),
      ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Selcione o modo de\n transferencia:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconesTransfer(
                  imagePath: 'lib/src/img/pix.webp',
                  title: "PIX",
                ),
                SizedBox(
                  width: 25,
                ),
                IconesTransfer(
                  imagePath: 'lib/src/img/ted_doc2.png',
                  title: "DOC/TED",
                ),
                SizedBox(
                  width: 25,
                ),
                IconesTransfer(
                  imagePath: 'lib/src/img/receber.png',
                  title: "RECEBER",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
