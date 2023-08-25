import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 100,
        shadowColor: null,
        elevation: 0,
        title: const CircleAvatar(
          radius: 25,
          backgroundColor: Color.fromARGB(255, 69, 110, 254),
          child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                'lib/src/img/man1.jpg',
              )),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Color.fromARGB(255, 69, 110, 254),
            ),
          ),
        ],
      ),
      body: const Text('Body!!!'),
    );
  }
}
