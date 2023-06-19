import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatefulWidget {
  @override
  State<AulaComponentes> createState() => _AulaComponentesState();
}

class _AulaComponentesState extends State<AulaComponentes> {
  var perguntaAtual = 0;
  var cor = Colors.white;

  //aqui é a aula de hoje trocar a lista de strings por uma lista de MAP

  // final perguntas = [
  //   "Qual a sua cor favorita?",
  //   "Qual o seu animal favorito?",
  // ];

  final List<Map<String, Object>> perguntas = [
    {
      "texto": "Qual a sua cor favorita?",
      "respostas": ["Amarelo", "Preto", "Branco", "Azul", "Vermelho"]
    },
    {
      "texto": "Qual é seu animal favorito?",
      "respostas": ["Cachorro", "Gato", "Tartaruga", "Periquito"]
    },
    {
      "texto": "Qual sua linguagem favorita?",
      "respostas": ["Python", "Java", "JavaScript"]
    },
    {
      "texto": "Qual seu esporte favorito?",
      "respostas": ["Futebol", "TÊNIS", "Basquete", "Golfe"]
    },
    {
      "texto": "Qual sua trilogia de Star Wars favorito?",
      "respostas": [
        "TODAS",
        "Pre-'Dart'Vader",
        "Era 'Dart' Vader",
        "Pos 'Dart' Vader"
      ]
    },
  ];
  bool get temPergunta {
    return perguntaAtual < perguntas.length;
  }

  void acao() {
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

  Widget build(BuildContext context) {
    List<Widget> respostas = [];
    //primeiro montar esse for
    if (temPergunta) {
      for (var resposta in perguntas[perguntaAtual].cast()["respostas"]) {
        print(resposta);
        respostas.add(Resposta(resposta, acao));
      }
    }
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: temPergunta
                    ? Questao(perguntas[perguntaAtual]["texto"].toString())
                    : Questao("Terminou")),
            body: temPergunta
                ? Column(
                    children: [
                      ...respostas,
                    ],
                  )
                : Text("Questionário finalizado com sucesso, tamo junto")));
  }
}
