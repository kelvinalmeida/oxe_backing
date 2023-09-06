import 'package:flutter/material.dart';

class Transferencia extends StatelessWidget {
  const Transferencia({super.key});

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tranferencias'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Selcione o modo de transferencia:',
              style: TextStyle(
                fontSize: 20,
                // backgroundColor: Colors.amber,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 94, 185, 99),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'lib/src/img/pix.webp',
                      height: screenwidth / 5,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 94, 185, 99),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'lib/src/img/TED_DOC.jpg',
                      height: screenwidth / 5,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 94, 185, 99),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'lib/src/img/pix.webp',
                      height: screenwidth / 5,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
