// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_for_shoes/models/cart.dart';
import 'package:s_for_shoes/pages/homePage.dart';
import 'package:s_for_shoes/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) =>Cart(),
    builder:(context, child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: introPage(),
    ),);
  }
}
