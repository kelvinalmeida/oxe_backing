import 'package:flutter/material.dart';

class ConsultarInvestimentos extends StatelessWidget {
  const ConsultarInvestimentos({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> investimentos = [
      {'title': 'Investimento 1', 'valor': '2350.33'},
      {'title': 'Investimento 2', 'valor': '1250.33'},
      {'title': 'Investimento 3', 'valor': '4450.33'},
      {'title': 'Investimento 4', 'valor': '2330.33'},
      {'title': 'Investimento 5', 'valor': '8950.33'},
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Investir'),
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: investimentos.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              title: Text(
                investimentos[index]['title'] as String,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: Text(
                investimentos[index]['valor'] as String,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ));
  }
}
