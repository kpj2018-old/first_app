import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // parametros da classe
  const GradientContainer(this.cor1, this.cor2, {super.key});
  // mais de um construtor para uma mesma classe (assinaturas diferentes)
  const GradientContainer.purple({super.key})
      : cor1 = Colors.deepPurple,
        cor2 = Colors.indigo;

  final Color cor1;
  final Color cor2;
  //final Color cor2;

  // construtor da classe
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // recebe os params do construção na chamada da classe e aplica no
          // atributo das cores
          colors: [cor1, cor2], // utiliza as cores que recebeu por params.
          begin: startAlignment,
          end: endAligment,
        ),
      ),
      // Utiliza a Classe styledtext do pacote importado. Aqui é o texto que
      // ficará na tela. chama o construtor da classe styledText com o parametro
      // do texto.
      child: Center(child: DiceRoller()),
    );
  }
}
