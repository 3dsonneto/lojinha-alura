import 'package:alura_layout/widgets/botao_carrinho.dart';
import 'package:flutter/material.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {
  final String titulo;

  AppBarCustomizada({required this.titulo});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titulo,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        //colocar botões dentro do app bar
        BotaoCarrinho(),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
