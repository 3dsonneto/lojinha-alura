import 'package:alura_layout/models/movel.dart';
import 'package:alura_layout/widgets/appbar_customizada.dart';
import 'package:alura_layout/widgets/card_detalhes.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  final Movel movel;

  Detalhes({required this.movel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("utilidades/assets/imagens/${movel.foto}"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustomizada(
          titulo: "",
          isPaginaCarrinho: false,
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(16),
            height: 200,
            child: CardDetalhes(
              movel: movel,
            ),
          ),
        ),
      ),
    );
  }
}
