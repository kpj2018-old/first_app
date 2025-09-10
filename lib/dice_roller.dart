import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  //classe sem builder
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// underscore no nome da classe signifca que é  uma classe privada.
// deriva da de cima.
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';
  // função para rodar os dados
  void rollDice() {
    setState(() {
      // reexecuta o builder
      activeDiceImage = 'assets/images/dice-4.png';
    });

    // print('Click!');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
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
