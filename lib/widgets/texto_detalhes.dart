import 'package:flutter/material.dart';

class TextDetalhes extends StatelessWidget {
  final String texto;

  TextDetalhes({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 10),
      child: Text(texto),
    );
  }
}
