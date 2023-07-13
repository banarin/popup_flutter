import 'package:flutter/material.dart';

class newPage extends StatefulWidget {
  const newPage({super.key});

  @override
  State<newPage> createState() => _newPageState();
}

class _newPageState extends State<newPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Nouvelle Page',textScaleFactor: 1.5,),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenue sur la nouvelle page',textScaleFactor: 1.5,)
          ],
        ),
      ),
    );
  }
}
