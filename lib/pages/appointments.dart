import 'package:flutter/material.dart';

class Appointments extends StatelessWidget {
  const Appointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appiontments'),
      ),
      body: Center(
        child: Text('All your appointments here'),
      ),
    );
  }
}
