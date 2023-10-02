import 'package:flutter/material.dart';
import 'package:oxe_backing/screens/HomeScreen.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  void irTelaUsuario() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Form(
        child: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight / 1.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_balance,
                      color: Colors.blue,
                      size: screenWidth / 5,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Tela de Cadastro! \n Informe seus dados.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Cadastrar',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: screenWidth / 1.2,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Email'),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth / 1.2,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Senha'),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth / 1.2,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      label: Text('Telefone'),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth / 1.2,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      label: Text('Rua'),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth / 2,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          label: Text('Bairro'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: screenWidth / 3,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          label: Text('Cep'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: screenWidth / 1.2,
                  height: screenWidth / 8,
                  child: ElevatedButton(
                    onPressed: irTelaUsuario,
                    child: const Text(
                      'Cadastrar',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: screenWidth,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
