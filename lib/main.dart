import 'package:calculadora_imc_provider/Screens/home_page.dart';
import 'package:calculadora_imc_provider/model/model_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Dados())],
      child: MaterialApp(
        title: 'IMC_Provider',
        theme: ThemeData(primarySwatch: Colors.lime),
        home: const HomePage(),
      ),
    );
  }
}
