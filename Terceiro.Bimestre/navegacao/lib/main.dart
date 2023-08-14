import 'package:navegacao/telas/tela_categorias.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MeuCardapio());
}

class MeuCardapio extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      title: "Cardapio",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: TelaCategorias(),
    );
  }
  
}
