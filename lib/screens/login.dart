import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Text(
                'Bem Vindo ao OxeBanking!',
                style: TextStyle(
                  fontSize: 20,
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
                  onPressed: () {},
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
                height: screenWidth / 8,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                  ),
                  onPressed: () {},
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
    );
  }
}
