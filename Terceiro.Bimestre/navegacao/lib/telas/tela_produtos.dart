import 'package:flutter/material.dart';
import 'package:navegacao/models/categorias.dart';


class TelaProdutos extends StatelessWidget {
  const TelaProdutos({super.key});


  @override
  Widget build(BuildContext context) {
  final categoria = ModalRoute.of(context)?.settings.arguments as Categoria;    
    
    return Scaffold(appBar: AppBar(
    title: Text("Tela Produtos"),
    
    ),
    body: Text("A categoria escolhida foi ${categoria.titulo}"),

    
    
    
    );
  }
}