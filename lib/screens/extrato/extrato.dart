import 'package:flutter/material.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:oxe_backing/widgets/ExtratoItem.dart';

import 'package:http/http.dart' as http;

class Extrato extends StatefulWidget {
  const Extrato({super.key});

  @override
  _ExtratoState createState() => _ExtratoState();
}

class _ExtratoState extends State<Extrato> {
  String? mesSelecionado;
  Widget? mainContent = const Center(
    child: Text(
      'Selecione um mês!',
      style: TextStyle(
        fontSize: 20,
      ),
    ),
  );

  // Widget? mainContent = Center(
  //   child: ElevatedButton(onPressed: , child: Text('fetch')),
  // );

  List<Map<String, String>> extrato = [
    {'data': '10/01/2023', 'tipo': 'Saque com Cartão', 'quantia': '235'},
    {'data': '11/01/2023', 'tipo': 'Depósito', 'quantia': '505'},
    {'data': '11/02/2023', 'tipo': 'Depósito', 'quantia': '505'},
    {'data': '13/03/2023', 'tipo': 'Saque com Cartão', 'quantia': '355'},
    {'data': '14/04/2023', 'tipo': 'Saque com Cartão', 'quantia': '600'},
    {'data': '16/05/2023', 'tipo': 'Depósito', 'quantia': '80'},
    {'data': '14/06/2023', 'tipo': 'Saque com Cartão', 'quantia': '600'},
    {'data': '16/12/2023', 'tipo': 'Depósito', 'quantia': '80'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showMonthPicker(
            context: context,
            initialDate: DateTime.now(),
          ).then((date) {
            if (date != null) {
              setState(() {
                mesSelecionado = date.toString()[5] + date.toString()[6];
                mainContent = null;
              });
            }
          });
        },
        child: const Icon(
          Icons.calendar_today,
        ),
      ),
      appBar: AppBar(
        title: Text('Extrato do mês ${mesSelecionado ?? '(Selecione um mes)'}'),
        backgroundColor: const Color.fromARGB(255, 20, 112, 173),
      ),
      body: mainContent ??
          ListView.builder(
            itemCount: extrato.length,
            itemBuilder: (ctx, i) {
              if (mesSelecionado ==
                  (extrato[i]['data']![3] + extrato[i]['data']![4])) {
                return ExtratoItem(extrato: extrato, index: i);
              } else {
                return const SizedBox(height: 0);
              }
            },
          ),
    );
  }
}
