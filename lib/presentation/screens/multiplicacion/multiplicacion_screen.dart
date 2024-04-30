import 'package:calculos/presentation/widgets/operaciones_widget.dart';
import 'package:flutter/material.dart';

class MultiplicacionScreen extends StatelessWidget {
  static const name = 'MultiplicacionScreen';

  const MultiplicacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MULTIPLICAR DE DOS NUMEROS'),
      ),
      body: const OperacionesWidget(operacion: Operacion.multiplicacion),
    );
  }
}