import 'package:alura_layout/models/movel.dart';
import 'package:alura_layout/widgets/texto_detalhes.dart';
import 'package:flutter/material.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;

  CardDetalhes({required this.movel});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        TextDetalhes(texto: movel.titulo),
        TextDetalhes(texto: movel.descricao),
      ],
    ));
  }
}
