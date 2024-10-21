import 'package:flutter/material.dart';

class CardsScreen  extends StatelessWidget{
  static const String name= 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const Placeholder(),
    );
  }
}

class _CardView extends StatelessWidget {
  const _CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _CardType1 extends StatelessWidget {
  const _CardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}