import 'package:flutter/material.dart';

class CustomersRegister extends StatefulWidget {
  @override
  _CustomersRegisterState createState() => _CustomersRegisterState();
}

class _CustomersRegisterState extends State<CustomersRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Clientes'),
        backgroundColor: Colors.teal[300],
      ),
    );
  }
}
