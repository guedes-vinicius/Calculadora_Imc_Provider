import 'package:calculadora_imc_provider/model/model_controller.dart';
import 'package:calculadora_imc_provider/model/text_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _alturaController = TextEditingController();
    final TextEditingController _pesoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('IMC Provider'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 50)),
          Text('Altura'),
          TextField(
            controller: _alturaController,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text('Peso'),
          TextField(
            controller: _pesoController,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: TextButton(
              onPressed: () {
                context.read<Dados>().setAltura(_alturaController.text);
                context.read<Dados>().setPeso(_pesoController.text);
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.lime,
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
              child: Text(
                'Calcular',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            context.watch<Dados>().imc.toStringAsPrecision(3),
            style: TextStyle(fontSize: 25),
          ),
          TextInfor(),
        ],
      ),
    );
  }
}
