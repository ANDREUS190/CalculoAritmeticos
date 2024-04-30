import 'package:flutter/material.dart';

enum Operacion { suma, resta, multiplicacion}

class OperacionesWidget extends StatefulWidget {
  final Operacion operacion;

  // ignore: use_key_in_widget_constructors
  const OperacionesWidget({required this.operacion});

  @override
  State<OperacionesWidget> createState() => _OperacionesWidgetState();
}

class _OperacionesWidgetState extends State<OperacionesWidget> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String textoBoton;
    Function(int, int) operacionFunction;

    switch (widget.operacion) {
      case Operacion.suma:
        textoBoton = 'Sumar';
        operacionFunction = (int a, int b) => a + b;
        break;
      case Operacion.resta:
        textoBoton = 'Restar';
        operacionFunction = (int a, int b) => a - b;
        break;
      case Operacion.multiplicacion:
        textoBoton = 'Multiplicar';
        operacionFunction = (int a, int b) => a * b;
        break;
    }

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _controller1,
                decoration: const InputDecoration(
                  hintText: 'Número 1',
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: _controller2,
                decoration: const InputDecoration(
                  hintText: 'Número 2',
                ),
                keyboardType: TextInputType.number,
              ),
              TextButton.icon(
                icon: const Icon(Icons.play_arrow_rounded),
                label: Text(textoBoton),
                onPressed: () {
                  int number1 = _controller1.text.isEmpty ? 0 : int.tryParse(_controller1.text) ?? 0;
                  int number2 = _controller2.text.isEmpty ? 0 : int.tryParse(_controller2.text) ?? 0;

                  int result = operacionFunction(number1, number2);

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text('El resultado de la operación es: $result'),
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
