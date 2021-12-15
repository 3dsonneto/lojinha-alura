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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextDetalhes(texto: movel.titulo),
        TextDetalhes(texto: movel.descricao),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(formatacaoReais.format(movel.preco)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor),
                onPressed: () {},
                child: Text(
                  "Comprar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
