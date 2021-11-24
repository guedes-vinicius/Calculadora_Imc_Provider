import 'package:provider/provider.dart';

import 'package:flutter/cupertino.dart';

class Dados extends ChangeNotifier {
  double _altura = 0;
  double _peso = 0;
  double _imc = 0;
  String _infoText = '';

  double get altura => _altura;
  double get peso => _peso;
  String get infoText => _infoText;
  double get imc => _imc;

  void setAltura(String alturaString) {
    double alturaDouble = double.parse(alturaString);
    _altura = alturaDouble;
    notifyListeners();
  }

  void setPeso(String pesoString) {
    double pesoDouble = double.parse(pesoString);
    _peso = pesoDouble;
    notifyListeners();
    CalcularImc();
  }

  void CalcularImc() {
    double newAltura = altura / 100;
    double total = peso / (newAltura * newAltura);
    _imc = total;
    notifyListeners();
    TextInfo();
  }

  void TextInfo() {
    if (_imc < 18.6) {
      _infoText = "Abaixo do Peso";
    } else if (_imc >= 18.6 && _imc < 24.9) {
      _infoText = "Peso Ideal";
    } else if (_imc >= 24.9 && _imc < 29.9) {
      _infoText = "Levemente Acima do Peso ";
    } else if (_imc >= 29.9 && _imc < 34.9) {
      _infoText = "Obesidade Grau I ";
    } else if (_imc >= 34.9 && _imc < 39.9) {
      _infoText = "Obesidade Grau II";
    } else if (_imc >= 40) {
      _infoText = "Obesidade Grau III";
    }
    notifyListeners();
  }
}
