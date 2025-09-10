import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  //classe sem builder
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
//
//

// underscore no nome da classe signifca que é  uma classe privada.
// deriva da de cima.
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  //var activeDiceImage = 'assets/images/dice-2.png';
  // função para rodar os dados
  void rollDice() {
    setState(
      () {
        currentDiceRoll = randomizer.nextInt(6) + 1;
        //activeDiceImage = 'assets/images/dice-$diceRoll.png';
      },
    );

    // print('Click!');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 60),
        // botão - usando uma função
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Joga Dados'),
        )
      ],
      //child: StyledText('Que lindo mundo!'),
      // trocando o texto por uma imagem.
      // cria a pasta com as imagens png e depois registra o caminho no arquivo pubspec.yml na seção assets:
    );
  }
}
