import 'package:flutter/material.dart';

enum SigningCharacter {
  simple_washing,
  premium_washing_without_wax,
  premium_washing_with_wax
}

class BookService extends StatefulWidget {
  @override
  _BookServiceState createState() => _BookServiceState();
}

class _BookServiceState extends State<BookService> {
  TextEditingController _customer = TextEditingController();
  TextEditingController _appointment = TextEditingController();

  SigningCharacter _washing = SigningCharacter.simple_washing;

  String service = '';

  _handleBookServiceData() {
    print('Cliente: ${_customer.text}');
    print('Horário: ${_appointment.text}');

    switch (_washing.index) {
      case 0:
        service = 'Lavagem Simples';
        break;
      case 1:
        service = 'Lavagem Completa sem cera';
        break;
      case 2:
        service = 'Lavagem Completa com cera';
        break;
      default:
    }
    print('Tipo de Serviço: $service');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendar Serviço'),
        backgroundColor: Colors.teal[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                top: 48.0,
                right: 8.0,
              ),
              child: TextField(
                controller: _customer,
                decoration: InputDecoration(
                  hintText: 'Cliente',
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
                controller: _appointment,
                decoration: InputDecoration(
                  hintText: 'Horário',
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: ListTile(
                title: const Text('Lavagem Simples'),
                leading: Radio<SigningCharacter>(
                  value: SigningCharacter.simple_washing,
                  groupValue: _washing,
                  onChanged: (SigningCharacter value) {
                    setState(() {
                      _washing = value;
                    });
                  },
                ),
              ),
            ),
            ListTile(
              title: const Text('Lavagem Completa sem Cera'),
              leading: Radio<SigningCharacter>(
                value: SigningCharacter.premium_washing_without_wax,
                groupValue: _washing,
                onChanged: (SigningCharacter value) {
                  setState(() {
                    _washing = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Lavagem Completa com Cera'),
              leading: Radio<SigningCharacter>(
                value: SigningCharacter.premium_washing_with_wax,
                groupValue: _washing,
                onChanged: (SigningCharacter value) {
                  setState(() {
                    _washing = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                top: 48.0,
                right: 8.0,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _handleBookServiceData,
                  child: Text(
                    'Agendar',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.teal[300]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
