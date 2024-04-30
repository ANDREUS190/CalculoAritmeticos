import 'package:calculos/presentation/widgets/operaciones_widget.dart';
import 'package:flutter/material.dart';

class RestaScreen extends StatelessWidget {
  static const name = 'RestaScreen';

  const RestaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RESTA DE DOS NUMEROS'),
      ),
      body: const OperacionesWidget(operacion: Operacion.resta),
    );
  }
}
