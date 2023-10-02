import 'package:flutter/material.dart';
import 'package:oxe_backing/screens/emprestimo/emprestimos.dart';
import 'package:oxe_backing/screens/investimento/investimento.dart';
import 'package:oxe_backing/screens/pagamento/pagamento.dart';
import 'package:oxe_backing/screens/transferencia/transferencia.dart';
import 'package:oxe_backing/widgets/appBarPhoto.dart';
import 'package:oxe_backing/widgets/saldo.dart';
import 'package:oxe_backing/widgets/servicos.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var spacoEntreServicos = screenWidth / 30;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const AppBarPhoto(),
            SizedBox(
              height: spacoEntreServicos,
            ),
            const Saldo(),
            SizedBox(
              height: spacoEntreServicos,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Servicos(
                  nome: 'Transferências',
                  color1: Color.fromARGB(255, 5, 57, 170),
                  color2: Color.fromARGB(255, 156, 176, 241),
                  iconOfService: Icons.transform_rounded,
                  screenTarget: Transferencia(),
                ),
                SizedBox(
                  width: spacoEntreServicos,
                ),
                const Servicos(
                  nome: 'Empréstimos',
                  color1: Color.fromARGB(255, 7, 126, 11),
                  color2: Color.fromARGB(255, 239, 243, 15),
                  iconOfService: Icons.monetization_on_rounded,
                  screenTarget: Emprestimo(),
                ),
              ],
            ),
            SizedBox(
              height: spacoEntreServicos,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Servicos(
                  nome: 'Pagamentos',
                  color1: Color.fromARGB(255, 20, 156, 43),
                  color2: Color.fromARGB(255, 146, 92, 29),
                  iconOfService: Icons.monetization_on_outlined,
                  screenTarget: Pagamento(),
                ),
                SizedBox(
                  width: spacoEntreServicos,
                ),
                const Servicos(
                  nome: 'Investimentos',
                  color1: Color.fromARGB(255, 228, 172, 53),
                  color2: Color.fromARGB(255, 81, 108, 129),
                  iconOfService: Icons.money_rounded,
                  screenTarget: Investimento(),
                ),
              ],
            ),
            SizedBox(
              height: screenWidth / 35,
            ),
          ],
        ),
      ),
    );
  }
}
