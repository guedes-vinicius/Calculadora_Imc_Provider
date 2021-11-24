import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'model_controller.dart';

class TextInfor extends StatelessWidget {
  const TextInfor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(context.watch<Dados>().infoText);
  }
}
