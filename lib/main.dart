import 'package:flutter/material.dart';
import 'package:igti_car_washing_ms/screens/Book.dart';
import 'package:igti_car_washing_ms/screens/BookService.dart';
import 'package:igti_car_washing_ms/screens/CustomersList.dart';
import 'package:igti_car_washing_ms/screens/CustomersRegister.dart';
import 'package:igti_car_washing_ms/screens/Home.dart';
import 'package:igti_car_washing_ms/screens/MySplashScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Material(
      child: MySplashScreen(),
    ),
    initialRoute: '/',
    routes: {
      '/home': (context) => Home(),
      '/customers_register': (context) => CustomersRegister(),
      '/book_service': (context) => BookService(),
      '/book': (context) => Book(),
      '/customers_list': (context) => CustomersList(),
    },
  ));
}
