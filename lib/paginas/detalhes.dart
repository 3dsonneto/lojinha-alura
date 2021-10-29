import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  const Detalhes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes"),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, "/carrinho");
        },
        child: Text("Agora para o carrinho"),
      ),
    );
  }
}
