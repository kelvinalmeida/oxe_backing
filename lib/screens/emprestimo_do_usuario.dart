import 'package:flutter/material.dart';

class EmprestimoUsuario extends StatelessWidget {
  const EmprestimoUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> emprestimos = [
      {
        'titulo': 'Ferias',
        'valor': '1235',
        'data do pedido': '23/03/2021',
      },
      {
        'titulo': 'Reforma',
        'valor': '50000',
        'data do pedido': '23/03/2020',
      },
      {
        'titulo': 'viajem',
        'valor': '5000',
        'data do pedido': '23/02/2020',
      },
      {
        'titulo': 'Ferias',
        'valor': '1235',
        'data do pedido': '23/03/2021',
      },
      {
        'titulo': 'Reforma',
        'valor': '50000',
        'data do pedido': '23/03/2020',
      },
      {
        'titulo': 'viajem',
        'valor': '5000',
        'data do pedido': '23/02/2020',
      },
      {
        'titulo': 'Ferias',
        'valor': '1235',
        'data do pedido': '23/03/2021',
      },
      {
        'titulo': 'Reforma',
        'valor': '50000',
        'data do pedido': '23/03/2020',
      },
      {
        'titulo': 'viajem',
        'valor': '5000',
        'data do pedido': '23/02/2020',
      },
      {
        'titulo': 'Ferias',
        'valor': '1235',
        'data do pedido': '23/03/2021',
      },
      {
        'titulo': 'Reforma',
        'valor': '50000',
        'data do pedido': '23/03/2020',
      },
      {
        'titulo': 'viajem',
        'valor': '5000',
        'data do pedido': '23/02/2020',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Emprestimo do Usuário'),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: emprestimos.length,
          itemBuilder: (context, index) => Card(
            color: const Color.fromARGB(255, 213, 253, 241),
            child: ListTile(
              leading: Text(emprestimos[index]['data do pedido']!),
              focusColor: Colors.amber,
              title: Text(
                emprestimos[index]['titulo']!,
                style: const TextStyle(fontSize: 20),
              ),
              subtitle: Text(emprestimos[index]['valor']!),
            ),
          ),
        ),
      ),
    );
  }
}
