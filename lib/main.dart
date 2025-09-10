import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  // ao colocar , entre os parenteses menos no último e clicar em shift+alt+f ele fica assim.
  runApp(
    const MaterialApp(
      home: Scaffold(
        // Utiliza a Classe container do pacote importado
        // passa como parametro as cores de fundo e a cor degrade.
        // cria objeto da classe GradientContainer passando os params do construtor da classe
        //body: GradientContainer(      Color.fromARGB(255, 81, 60, 177),      Colors.blue,
        body: GradientContainer(
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 68, 21, 149),
        ),
      ),
    ),
  );
}
