import 'package:flutter/material.dart';

class Carrinho extends StatelessWidget {
  const Carrinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrinho"),
      ),
      body: Text("Estamos no carrinho"),
    );
  }
}
