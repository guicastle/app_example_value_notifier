import 'package:flutter/material.dart';

// Respeitando o princípio de responsabilidade única
// Ele retorna apenas uma coisa que é um inteiro
// Poderia ser um objetivo, uma entidade, um retorno qualquer coisa
class Counter extends ValueNotifier<int> {
  Counter() : super(0);

  increment() => value++;
  decrement() => value--;
}
