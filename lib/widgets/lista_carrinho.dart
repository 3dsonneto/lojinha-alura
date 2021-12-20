import 'package:alura_layout/main.dart';
import 'package:alura_layout/models/item_carrinho.dart';
import 'package:alura_layout/models/movel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListaCarrinho extends StatefulWidget {
  final Function atualiza;

  ListaCarrinho({required this.atualiza});

  @override
  State<ListaCarrinho> createState() => _ListaCarrinhoState();
}

class _ListaCarrinhoState extends State<ListaCarrinho> {
  final List<ItemCarrinho> carrinho = Inicio.itensCarrinho;
  final formatacaoReais = NumberFormat.currency(locale: "pt_BR", symbol: "R\$");

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
                  Expanded(
                    child: Image(
                      image:
                          AssetImage("utilidades/assets/imagens/${movel.foto}"),
                      height: 92,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 92,
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movel.titulo,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(formatacaoReais.format(movel.preco)),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      _aumentarQuantidade(item);
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(8),
                                      child: Icon(
                                        Icons.add,
                                        size: 14,
                                      ),
                                    ),
                                  ),
                                  Text(item.quantidade.toString()),
                                  GestureDetector(
                                    onTap: () {
                                      _diminuirQuantidade(item);
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(8),
                                      child: Icon(
                                        Icons.remove,
                                        size: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _aumentarQuantidade(ItemCarrinho item) {
    setState(() {
      item.quantidade++;
      widget.atualiza;
    });
  }

  void _diminuirQuantidade(ItemCarrinho item) {
    if (item.quantidade > 1) {
      setState(() {
        item.quantidade--;
        widget.atualiza;
      });
    } else {
      _removerMovel(item);
    }
  }

  void _removerMovel(ItemCarrinho item) {
    setState(() {
      Inicio.itensCarrinho.remove(item);
      widget.atualiza;
    });
  }
}
