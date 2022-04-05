import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {
 
  final String parametro;

  const DetalhePage({Key? key, required this.parametro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    // var parametro = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe'),
      ),
      body: Center(
          child: Container(
        child: Text(
          parametro,
          style: TextStyle(fontSize: 22, color: Colors.red[600]),
        ),
      )),
    );
  }
}
