import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.link,
    required this.icon
  });
}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Sumar',
    link: '/suma',
    icon: Icons.add_outlined
  ),

  MenuItem(
    title: 'Resta',
    link: '/resta',
    icon: Icons.minor_crash_outlined
  ),

  MenuItem(
    title: 'Multiplicación',
    link: '/multiplicacion',
    icon: Icons.multiple_stop_outlined
  ),

];