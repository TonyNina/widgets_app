import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Riverpod Counter',
      subTitle: 'Intoducción a Riverpod',
      link: '/counter',
      icon: Icons.add_alarm_rounded),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Trajetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y diálogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI Controls +  Tiles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.gamepad_rounded),
  MenuItem(
      title: 'Introducción a la aplicación',
      subTitle: 'Pequeño tutorial de introducción',
      link: '/tutorial',
      icon: Icons.traffic_outlined),
  MenuItem(
      title: 'Infinite Scroll y Pull',
      subTitle: 'Listas infinitas y pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Cambiar tema',
      subTitle: 'Cambiar tema de la aplicación',
      link: '/theme_changer',
      icon: Icons.color_lens_outlined),
];
