import 'package:flutter/material.dart';
import 'pages.dart';

List categories = [
  'Relax',
  'Energise',
  'Commute',
  'Workout',
  'Focus',
];

List navbar = [
  Icons.home,
  Icons.search,
  Icons.library_books,
  Icons.settings,
];

List pages = [
  const Homepage(),
  const SearchPage(),
  const LibrabryPage(),
  const SettingPage(),
];
