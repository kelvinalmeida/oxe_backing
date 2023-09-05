import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:oxe_backing/widgets/ExtratoItem.dart';

class Extrato extends StatefulWidget {
  const Extrato({super.key});

  @override
  _ExtratoState createState() => _ExtratoState();
}

class _ExtratoState extends State<Extrato> {
  String? mesSelecionado;
  Widget? mainContent = const Center(
    child: Text('Selecione um mês!'),
  );

  List<Map<String, String>> extrato = [
    {'data': '10/03/2023', 'tipo': 'Saque com Cartão', 'quantia': '235'},
    {'data': '11/03/2023', 'tipo': 'Depósito', 'quantia': '505'},
    {'data': '13/03/2023', 'tipo': 'Saque com Cartão', 'quantia': '355'},
    {'data': '14/03/2023', 'tipo': 'Saque com Cartão', 'quantia': '600'},
    {'data': '16/03/2023', 'tipo': 'Depósito', 'quantia': '80'},
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
          title:
              Text('Extrato do mês ${mesSelecionado ?? '(Selecione um mes)'}'),
        ),
        body: mainContent ??
            ListView.builder(
                itemCount: extrato.length,
                itemBuilder: (ctx, i) =>
                    ExtratoItem(extrato: extrato, index: i)));
  }
}
