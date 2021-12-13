import 'package:flutter/material.dart';

class GridProdutos extends StatelessWidget {
  final moveis;

  GridProdutos({this.moveis});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: moveis.length,
      itemBuilder: (context, index) {
        final movel = moveis[index];

        return Container(child: Text("$movel"));
      },
    );
  }
}
