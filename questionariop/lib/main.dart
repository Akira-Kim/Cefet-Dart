import 'package:flutter/material.dart';

import './Questao.dart';
import './Resposta.dart';

main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatefulWidget{
  @override
  State<AulaComponentes> createState() => _AulaComponentesState();
}

class _AulaComponentesState extends State<AulaComponentes> {

  var perguntaAtual = 0;
  var cor = Colors.white;


  final List<Map<String, Object>> perguntas = [
    {
      "texto" : "Qual a sua cor favorita?",
      "respostas" : ["Amarelo","Preto", "Branco", "Azul", "Vermelho"]
    },
    {
      "texto" : "Qual é seu animal favorito?",
      "respostas" : ["Cachorro", "Gato", "Tartaruga", "Periquito"]
    },
    {
      "texto" : "Qual sua linguagem favorita?",
      "respostas" : ["Python", "Java", "JavaScript"]
    },

  ];
  
   bool get tempergunta{


    return perguntaAtual < perguntas.length;

   }



  void acao(){
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }


  Widget build(BuildContext context){

    List<Widget> respostas = [];
   
if (tempergunta){

 for (var resposta in perguntas[perguntaAtual].cast()["respostas"]) {
      print(resposta);


      respostas.add(
          Resposta(resposta, acao)
        );
        
    }

}

  

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: tempergunta
          ? Questao(perguntas[perguntaAtual]["texto"].toString())
          : Questao("Terminou"),

        ),
        body: tempergunta ? Column(
          children: [
            ...respostas,
          ],
        ): Text("Resultado")
      )
    );



    
  }
}