import 'package:flutter/material.dart';

class VerParcelas extends StatelessWidget {
  const VerParcelas({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> emprestimos = [
      {
        'titulo': 'Reforma',
        'valor': 'R\$ 500',
        'data do pedido': '23/03/2021',
        'pago': 'true',
      },
      {
        'titulo': 'Reforma',
        'valor': 'R\$ 500',
        'data do pedido': '23/04/2021',
        'pago': 'true',
      },
      {
        'titulo': 'Reforma',
        'valor': 'R\$ 500',
        'data do pedido': '23/05/2021',
        'pago': 'false',
      },
      {
        'titulo': 'Reforma',
        'valor': 'R\$ 500',
        'data do pedido': '23/06/2021',
        'pago': 'false',
      },
      {
        'titulo': 'Reforma',
        'valor': 'R\$ 500',
        'data do pedido': '23/07/2021',
        'pago': 'false',
      },
      {
        'titulo': 'Reforma',
        'valor': 'R\$ 500',
        'data do pedido': '23/08/2021',
        'pago': 'false',
      },
      {
        'titulo': 'Reforma',
        'valor': 'R\$ 500',
        'data do pedido': '23/09/2021',
        'pago': 'false',
      },
      {
        'titulo': 'Reforma',
        'valor': 'R\$ 500',
        'data do pedido': '23/10/2021',
        'pago': 'false',
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
            color: const Color.fromARGB(255, 197, 221, 214),
            child: ListTile(
              leading: Text(emprestimos[index]['data do pedido']!),
              focusColor: Colors.amber,
              title: Text(
                emprestimos[index]['titulo']!,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(emprestimos[index]['valor']!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  )),
              trailing: ElevatedButton(
                onPressed:
                    emprestimos[index]['pago']! == 'false' ? () {} : null,
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                child: Text(
                    emprestimos[index]['pago']! == 'false' ? 'Pagar' : 'Pago!'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
