import 'package:flutter/material.dart';

class Pix extends StatefulWidget {
  const Pix({super.key});

  @override
  State<Pix> createState() => _PixState();
}

class _PixState extends State<Pix> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    List<String> list = ['Numero Telefone', 'Email', 'CPF'];
    String dropdownValue = list.first;

    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const SizedBox(
          height: 50,
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
          width: 250,
          child: TextField(),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 150,
          child: ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 25, 14, 119))),
            child: const Text(
              'Fazer Pix',
              style: TextStyle(fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}
