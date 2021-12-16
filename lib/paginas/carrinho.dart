import 'package:alura_layout/widgets/appbar_customizada.dart';
import 'package:alura_layout/widgets/lista_carrinho.dart';
import 'package:flutter/material.dart';

class Carrinho extends StatelessWidget {
  const Carrinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(
        titulo: "Carrinho",
        isPaginaCarrinho: true,
      ),
      body: ListaCarrinho(),
    );
  }
}
