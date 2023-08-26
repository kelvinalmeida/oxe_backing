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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Saldo(),
          SizedBox(
            height: screenHeight / 30,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Servicos(
                nome: 'Pagamento',
                color1: Color.fromARGB(255, 47, 156, 51),
                color2: Color.fromARGB(255, 89, 241, 94),
              ),
              SizedBox(
                width: screenHeight / 30,
              ),
              const Servicos(
                nome: 'Pagamento',
                color1: Color.fromARGB(255, 47, 156, 51),
                color2: Color.fromARGB(255, 89, 241, 94),
              ),
            ],
          )
        ],
      ),
    );
  }
}
