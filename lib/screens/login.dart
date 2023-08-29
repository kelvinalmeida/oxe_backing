import 'package:flutter/material.dart';
import 'package:oxe_backing/screens/HomeScreen.dart';
import 'package:oxe_backing/screens/cadastro.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void irTelaUsuario() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  void irTelaCadastro() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Cadastro(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: SizedBox(
            height: screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                      'Bem Vindo ao OxeBanking!',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: screenWidth / 1.5,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Email'),
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth / 1.5,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Senha'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: screenWidth / 1.5,
                  height: screenWidth / 8,
                  child: ElevatedButton(
                    onPressed: irTelaUsuario,
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: screenWidth,
                  height: screenWidth / 5,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green),
                    ),
                    onPressed: irTelaCadastro,
                    child: const Text(
                      'Cadastrar',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
