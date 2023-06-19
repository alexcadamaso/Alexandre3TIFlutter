import 'package:flutter/material.dart';

// //conteiner
// child representa ao conteudo
// padding é o espaçamento entre o conteudo e a borda
// border é a borda
// margem é a distancia entre um componente e outro

class Questao extends StatelessWidget{
  final String texto;

  Questao(this.texto);

  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
          texto,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
          ),
    );
  }
}
  
