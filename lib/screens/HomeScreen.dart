import 'package:flutter/material.dart';
import 'package:oxe_backing/widgets/fotoPerfilNome.dart';
import 'package:oxe_backing/widgets/saldo.dart';
import 'package:oxe_backing/widgets/servicos.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 100,
        shadowColor: null,
        elevation: 0,
        title: const FotoPerfilNome(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Color.fromARGB(255, 69, 110, 254),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Saldo(),
            SizedBox(
              height: screenHeight / 35,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Servicos(
                  nome: 'Transferências',
                  color1: Color.fromARGB(255, 90, 20, 156),
                  color2: Color.fromARGB(255, 236, 169, 92),
                  iconOfService: Icons.transform_rounded,
                ),
                SizedBox(
                  width: screenHeight / 35,
                ),
                const Servicos(
                  nome: 'Empréstimos',
                  color1: Color.fromARGB(255, 7, 126, 11),
                  color2: Color.fromARGB(255, 239, 243, 15),
                  iconOfService: Icons.monetization_on_rounded,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight / 35,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Servicos(
                  nome: 'Pagamentos',
                  color1: Color.fromARGB(255, 20, 156, 43),
                  color2: Color.fromARGB(255, 236, 169, 92),
                  iconOfService: Icons.monetization_on_outlined,
                ),
                SizedBox(
                  width: screenHeight / 35,
                ),
                const Servicos(
                  nome: 'Poupança',
                  color1: Color.fromARGB(255, 47, 156, 51),
                  color2: Color.fromARGB(255, 89, 241, 94),
                  iconOfService: Icons.safety_check,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight / 35,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Servicos(
                  nome: 'Pagamentos',
                  color1: Color.fromARGB(255, 20, 156, 43),
                  color2: Color.fromARGB(255, 236, 169, 92),
                  iconOfService: Icons.monetization_on_outlined,
                ),
                SizedBox(
                  width: screenHeight / 35,
                ),
                const Servicos(
                  nome: 'Poupança',
                  color1: Color.fromARGB(255, 47, 156, 51),
                  color2: Color.fromARGB(255, 89, 241, 94),
                  iconOfService: Icons.safety_check,
                ),
              ],
            ),
            SizedBox(
              height: screenHeight / 35,
            ),
          ],
        ),
      ),
    );
  }
}
