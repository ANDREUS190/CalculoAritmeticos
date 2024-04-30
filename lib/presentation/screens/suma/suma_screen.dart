import 'package:calculos/presentation/widgets/operaciones_widget.dart';
import 'package:flutter/material.dart';

class SumaScreen extends StatelessWidget {
  static const name = 'SumaScreen';

  const SumaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SUMA DE DOS NUMEROS'),
      ),
      body: const OperacionesWidget(operacion: Operacion.suma),
    );
  }
}
