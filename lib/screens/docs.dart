import 'package:flutter/material.dart';

class Docs extends StatefulWidget {
  const Docs({super.key});

  @override
  State<Docs> createState() => _DocsState();
}

class _DocsState extends State<Docs> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    List<String> list = ['Caixa', 'Bradesco', 'NuBanck', '...'];
    String dropdownValue = list.first;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 14, 119),
        elevation: 0,
        foregroundColor: Colors.white,
        title: const Text('Fazer DOC/TED'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                width: 210,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(label: Text("Conta")),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(label: Text("Agencia")),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(label: Text("Dígito")),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 25, 14, 119))),
                  child: const Text(
                    'Fazer Docs',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
