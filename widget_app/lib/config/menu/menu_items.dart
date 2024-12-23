import 'package:flutter/material.dart';
import 'package:widget_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widget_app/presentation/screens/cards/cards_screen.dart';
import 'package:widget_app/presentation/screens/progress/progress_screen.dart';
import 'package:widget_app/presentation/screens/screens.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
  final String name;

  MenuItems({
  required this.title,
  required this.subTitle,
  required this.link,
  required this.icon,
  required this.name
  });
}

final appMenuItems = <MenuItems>[
  MenuItems
  (title: 'Botones', 
  subTitle: 'Varios botones en Flutter', 
  link: '/buttons', 
  icon: Icons.smart_button_outlined,
  name: ButtonsScreen.name),
    
  MenuItems
  (title: 'Tarjetas', 
  subTitle: 'Un contenedor estilizador', 
  link: '/cards', 
  icon: Icons.credit_card,
  name: CardsScreen.name),

  MenuItems
  (title: 'Progress Indicators', 
  subTitle: 'Generales y Controlados', 
  link: '/progress', 
  icon: Icons.refresh_rounded,
  name: ProgressScreen.name),

  MenuItems
  (title: 'Snackbars y diálogos', 
  subTitle: 'Indicadores en pantalla', 
  link: '/snackbars', 
  icon: Icons.info_outline,
  name: SnackbarScreen.name),
];



