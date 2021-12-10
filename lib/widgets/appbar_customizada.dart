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
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
