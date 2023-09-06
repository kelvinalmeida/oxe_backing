import 'package:flutter/material.dart';

class ExtratoItem extends StatelessWidget {
  const ExtratoItem({
    required this.extrato,
    required this.index,
    super.key,
  });

  final List<Map<String, String>> extrato;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: const Color.fromARGB(255, 170, 208, 238),
        child: ListTile(
          leading: Text(
            extrato[index]['data'] as String,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          title: Text('R\$ ${extrato[index]['quantia'] as String}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          subtitle: Text(
            extrato[index]['tipo'] as String,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
