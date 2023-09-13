import 'package:flutter/material.dart';
import 'package:oxe_backing/screens/extrato.dart';

class Saldo extends StatelessWidget {
  const Saldo({super.key});

  void showModalExtrato(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const Extrato(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidget = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight / 4,
      width: screenWidget - 40,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.centerLeft,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 223, 201, 103),
            Color.fromARGB(255, 46, 12, 182),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bem vindo de Volta!',
            style: TextStyle(
              color: Colors.white,
              fontSize: screenHeight / 40,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: screenHeight / 90,
          ),
          Text(
            'Agencia / Conta / Digito',
            style: TextStyle(
              color: Colors.white,
              fontSize: screenHeight / 40,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: screenHeight / 90,
          ),
          Text(
            '5354654 5665-5',
            style: TextStyle(
              color: Colors.white,
              fontSize: screenHeight / 40,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: screenHeight / 90,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Saldo:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight / 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: screenHeight / 90,
              ),
              Text(
                '10.235',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight / 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: screenHeight / 15,
                width: screenWidget / 4,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.transparent),
                  ),
                  onPressed: () {
                    showModalExtrato(context);
                  },
                  child: const Text(
                    'Extrato',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
