import 'package:alura_layout/models/movel.dart';
import 'package:alura_layout/widgets/appbar_customizada.dart';
import 'package:alura_layout/widgets/card_detalhes.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {
  final Movel movel;

  Detalhes({required this.movel});

  @override
  State<Detalhes> createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  void initstate() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("utilidades/assets/imagens/${widget.movel.foto}"),
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
            height: 220,
            child: CardDetalhes(
              movel: widget.movel,
              atualizaPagina: atualiza,
            ),
          ),
        ),
      ),
    );
  }

  atualiza() {
    setState(() {});
  }
}
