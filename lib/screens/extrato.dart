import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class Extrato extends StatefulWidget {
  const Extrato({super.key});

  @override
  _ExtratoState createState() => _ExtratoState();
}

class _ExtratoState extends State<Extrato> {
  String? mesSelecionado;
  Widget? mainContent = const Center(
    child: Text('Delecione um mês!'),
  );

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
        title: Text('Extrato do mês ${mesSelecionado ?? ''}'),
      ),
      body: mainContent ??
          const Column(
            children: [],
          ),
    );
  }
}
