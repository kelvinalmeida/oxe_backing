import 'package:flutter/material.dart';

class Investir extends StatefulWidget {
  const Investir({super.key});

  @override
  State<Investir> createState() => _InvestirState();
}

class _InvestirState extends State<Investir> {
  @override
  Widget build(BuildContext context) {
    List<String> list = ['Tesouro Direto', 'CDB', 'Polpança'];
    String dropdownValue = list.first;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Investir'),
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Informe a Quantia\ne o tipo do Investimento',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            DropdownMenu<String>(
              initialSelection: list.first,
              onSelected: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              dropdownMenuEntries: list.map((String value) {
                return DropdownMenuEntry(value: value, label: value);
              }).toList(),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.purple[900],
                  ),
                ),
                child: const Text(
                  'Investir',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
