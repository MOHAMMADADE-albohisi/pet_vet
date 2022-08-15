import 'package:flutter/material.dart';
import 'package:pet_vet/screens/app/home_cats_screen.dart';
import 'package:pet_vet/screens/app/welcom_screen.dart';
import 'package:pet_vet/screens/auth/forget_screen.dart';
import 'package:pet_vet/screens/auth/login_screen.dart';
import 'package:pet_vet/screens/auth/regester_screen.dart';
import 'package:pet_vet/screens/core/lunch_screen.dart';
import 'package:pet_vet/screens/core/onbressd.dart';

void main() {
  runApp(const pet_vet());
}

// ignore: camel_case_types
class pet_vet extends StatelessWidget {
  const pet_vet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home_cate_screen',
      routes: {
        '/linch_screen': (context) => const lunch_screens(),
        '/onbressd_screen': (context) => const onpresd(),
        '/login_screen': (context) => const login_screen(),
        '/regester_screen': (context) => const regester_screen(),
        '/forget_screen': (context) => const forget_screen(),
        '/welcom_screen': (context) => const welcom_screen(),
        '/home_cate_screen': (context) => const home_cate_screen(),
      },
    );
  }
}
