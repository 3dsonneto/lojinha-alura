import 'package:alura_layout/widgets/botao_carrinho.dart';
import 'package:flutter/material.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {
  final String titulo;
  final bool isPaginaCarrinho;

  AppBarCustomizada({required this.titulo, required this.isPaginaCarrinho});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        titulo,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        //colocar botões dentro do app bar
        _mudarPaginaCarrinho(isPaginaCarrinho),
      ],
    );
  }

  _mudarPaginaCarrinho(bool isPaginaCarrinho) {
    if (isPaginaCarrinho) return Container();
    return BotaoCarrinho();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
