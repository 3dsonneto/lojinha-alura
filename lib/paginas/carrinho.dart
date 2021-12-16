import 'package:alura_layout/widgets/appbar_customizada.dart';
import 'package:alura_layout/widgets/lista_carrinho.dart';
import 'package:flutter/material.dart';

class Carrinho extends StatefulWidget {
  const Carrinho({Key? key}) : super(key: key);

  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(
        titulo: "Carrinho",
        isPaginaCarrinho: true,
      ),
      body: ListaCarrinho(atualiza: atualiza),
    );
  }

  atualiza() {
    setState(() {});
  }
}
