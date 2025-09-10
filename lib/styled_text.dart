import 'package:flutter/material.dart';

// Classe
class StyledText extends StatelessWidget {
  // parametro da classe
  StyledText(this.texto, {super.key});
  // recebe o texto da tela como parametro.
  // parametro um é atributo da classe/objeto que será preenchido e ficará na
  // variavel final.

  final String texto;
  // construtor da classe
  @override
  Widget build(context) {
    // TODO: implement build
    return Text(
      texto, // texto recebido na construção do objeto desta classe
      style: const TextStyle(
        color: Color.fromARGB(255, 212, 212, 230),
        fontSize: 28,
      ),
    );
  }
}
