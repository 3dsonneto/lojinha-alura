import 'package:alura_layout/main.dart';
import 'package:alura_layout/models/item_carrinho.dart';
import 'package:alura_layout/models/movel.dart';
import 'package:flutter/material.dart';

class ListaCarrinho extends StatelessWidget {
  final List<ItemCarrinho> carrinho = Inicio.itensCarrinho;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: carrinho.length,
        itemBuilder: (BuildContext context, int index) {
          ItemCarrinho item = carrinho[index];
          Movel movel = item.movel;

          return Container(
            margin: EdgeInsets.all(16),
            child: Card(
              clipBehavior: Clip.hardEdge,
              child: Row(
                children: [
                  Image(
                    image:
                        AssetImage("utilidades/assets/imagens/${movel.foto}"),
                    height: 92,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movel.titulo),
                        Text(movel.preco.toString()),
                        Text(item.quantidade.toString()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
