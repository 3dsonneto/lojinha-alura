import 'package:alura_layout/models/movel.dart';
import 'package:alura_layout/paginas/detalhes.dart';
import 'package:alura_layout/widgets/grid_produtos/degrade_elemento_grid_produtos.dart';
import 'package:alura_layout/widgets/grid_produtos/imagem_elemento_grid_produtos.dart';
import 'package:alura_layout/widgets/grid_produtos/titulo_elemento_grid_produtos.dart';
import 'package:flutter/material.dart';

class ElementoGridProdutos extends StatelessWidget {
  final Movel movel;

  ElementoGridProdutos({required this.movel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detalhes(
              movel: movel,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 8,
              color: Colors.black12,
            ),
          ],
        ),
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ImagemElementoGridProdutos(
                imagem: movel.foto,
              ),
              DegradeElementoGridProdutos(),
              TituloElementoGridProdutos(titulo: movel.titulo),
            ],
          ),
        ),
      ),
    );
  }
}
