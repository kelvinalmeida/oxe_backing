import 'package:flutter/material.dart';
import 'package:oxe_backing/screens/verPacelas.dart';
import 'package:oxe_backing/screens/simular_emprestimo.dart';
import 'package:oxe_backing/screens/solicitar_renegocioacao.dart';
import 'package:oxe_backing/widgets/iconesWidget.dart';

class Emprestimo extends StatelessWidget {
  const Emprestimo({super.key});

  void showEmprestimoUsuario(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const VerParcelas(),
      ),
    );
  }

  void showSimuladorDeEmprestimo(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const SimularEmprestimo(),
      ),
    );
  }

  void showSolicitarRenegociacao(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const SolicitarRenegociacao(),
      ),
    );
  }

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconeWidget(
                    imagePath: 'lib/src/img/receber_transfer.png',
                    title: 'Simular\nEmprestimo',
                    onShowButtonModal: () {
                      showSimuladorDeEmprestimo(context);
                    },
                    listColors: const [
                      Color.fromARGB(255, 32, 63, 33),
                      Color.fromARGB(255, 135, 151, 42),
                    ],
                    containerSize: 7,
                    fontSize: 17,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconeWidget(
                    imagePath: 'lib/src/img/receber_transfer.png',
                    title: 'Ver Parcelas',
                    onShowButtonModal: () {
                      showEmprestimoUsuario(context);
                    },
                    listColors: const [
                      Color.fromARGB(255, 32, 63, 33),
                      Color.fromARGB(255, 135, 151, 42),
                    ],
                    containerSize: 7,
                    fontSize: 17,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconeWidget(
                    imagePath: 'lib/src/img/receber_transfer.png',
                    title: 'Socilitar\nRenegociação',
                    onShowButtonModal: () {
                      showSolicitarRenegociacao(context);
                    },
                    listColors: const [
                      Color.fromARGB(255, 32, 63, 33),
                      Color.fromARGB(255, 135, 151, 42),
                    ],
                    containerSize: 7,
                    fontSize: 17,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
