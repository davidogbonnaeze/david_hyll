import 'package:flutter/material.dart';

class AddAdventurePage extends StatefulWidget {
  const AddAdventurePage({Key? key}) : super(key: key);

  @override
  State<AddAdventurePage> createState() => _AddAdventurePageState();
}

class _AddAdventurePageState extends State<AddAdventurePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Add Adventure Page'),
      ),
    );
  }
}
