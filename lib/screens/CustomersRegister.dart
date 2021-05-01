import 'package:flutter/material.dart';

class CustomersRegister extends StatefulWidget {
  @override
  _CustomersRegisterState createState() => _CustomersRegisterState();
}

class _CustomersRegisterState extends State<CustomersRegister> {
  TextEditingController _name = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();

  _handleClientData() {
    print('Nome: ${_name.text}');
    print('Telefone: ${_phoneNumber.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Clientes'),
        backgroundColor: Colors.teal[300],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 48.0,
              right: 8.0,
            ),
            child: TextField(
              controller: _name,
              decoration: InputDecoration(
                hintText: 'Nome',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 48.0,
              right: 8.0,
            ),
            child: TextField(
              controller: _phoneNumber,
              decoration: InputDecoration(
                hintText: 'Telefone',
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 56.0,
              right: 8.0,
            ),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _handleClientData,
                child: Text(
                  'Salvar',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal[300]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
