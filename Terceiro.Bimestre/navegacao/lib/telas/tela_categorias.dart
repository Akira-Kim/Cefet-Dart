import 'package:flutter/material.dart';
import 'package:navegacao/componentes/item_categoria.dart';
import 'package:navegacao/data/mock_data.dart';
import 'package:navegacao/models/categorias.dart';

class TelaCategorias extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cardapio" ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200 ,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
      ),
      children: mockCategories.map(
        (categoria){
          return ItemCategoria(categoria);
        }
      ).toList(),

      ),
    );
  }
}