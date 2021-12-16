import 'package:alura_layout/main.dart';
import 'package:alura_layout/models/item_carrinho.dart';
import 'package:alura_layout/models/movel.dart';
import 'package:alura_layout/widgets/texto_detalhes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;
  final Function atualizaPagina;

  final formatacaoReais = NumberFormat.currency(locale: "pt_BR", symbol: "R\$");

  CardDetalhes({required this.movel, required this.atualizaPagina});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextDetalhes(
            texto: movel.titulo, estilo: Theme.of(context).textTheme.headline1),
        TextDetalhes(texto: movel.descricao, estilo: null),
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                formatacaoReais.format(movel.preco),
                style: Theme.of(context).textTheme.headline1,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor),
                onPressed: () {
                  _adicionarItemCarrinho(
                    ItemCarrinho(movel: movel, quantidade: 1),
                  );
                },
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

  _adicionarItemCarrinho(ItemCarrinho item) {
    Inicio.itensCarrinho.add(item);
    atualizaPagina();
  }
}
