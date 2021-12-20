import 'package:alura_layout/models/movel.dart';
import 'package:alura_layout/widgets/grid_produtos/elemento_grid_produtos.dart';
import 'package:flutter/material.dart';

class GridProdutos extends StatelessWidget {
  final Function atualiza;
  final moveis;

  GridProdutos({required this.atualiza, this.moveis});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: moveis.length,
      itemBuilder: (context, index) {
        final movel = Movel.fromJson(moveis[index]);

        return ElementoGridProdutos(atualiza: atualiza, movel: movel);
      },
    );
  }
}
