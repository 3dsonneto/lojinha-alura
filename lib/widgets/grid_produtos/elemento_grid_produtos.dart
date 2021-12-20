import 'package:alura_layout/models/movel.dart';
import 'package:alura_layout/paginas/detalhes.dart';
import 'package:alura_layout/widgets/grid_produtos/degrade_elemento_grid_produtos.dart';
import 'package:alura_layout/widgets/grid_produtos/imagem_elemento_grid_produtos.dart';
import 'package:alura_layout/widgets/grid_produtos/titulo_elemento_grid_produtos.dart';
import 'package:flutter/material.dart';

class ElementoGridProdutos extends StatefulWidget {
  final Movel movel;
  final Function atualiza;

  ElementoGridProdutos({required this.atualiza, required this.movel});

  @override
  State<ElementoGridProdutos> createState() => _ElementoGridProdutosState();
}

class _ElementoGridProdutosState extends State<ElementoGridProdutos> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detalhes(
              movel: widget.movel,
            ),
          ),
        ).then((value) => widget.atualiza());
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
                imagem: widget.movel.foto,
              ),
              DegradeElementoGridProdutos(),
              TituloElementoGridProdutos(titulo: widget.movel.titulo),
            ],
          ),
        ),
      ),
    );
  }
}
