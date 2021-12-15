import 'package:alura_layout/models/movel.dart';
import 'package:alura_layout/widgets/texto_detalhes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;
  final formatacaoReais = NumberFormat.currency(locale: "pt_BR", symbol: "R\$");

  CardDetalhes({required this.movel});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        TextDetalhes(texto: movel.titulo),
        TextDetalhes(texto: movel.descricao),
        Row(
          children: [
            Text(formatacaoReais.format(movel.preco)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor),
              onPressed: () {},
              child: Text("Comprar"),
            ),
          ],
        )
      ],
    ));
  }
}
