import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IGTI CarWashing',
        ),
        backgroundColor: Colors.teal[300],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 32.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: double.infinity,
              height: 112.0,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 16.0,
                  right: 8.0,
                  bottom: 16.0,
                ),
                child: ElevatedButton(
                  child: Text('Cadastro de Clientes',
                      style: TextStyle(
                        fontSize: 24.0,
                      )),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.teal[300]),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/customers_register');
                  },
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 112.0,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 16.0,
                  right: 8.0,
                  bottom: 16.0,
                ),
                child: ElevatedButton(
                  child: Text('Agendar Serviço',
                      style: TextStyle(
                        fontSize: 24.0,
                      )),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.teal[300]),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/book_service');
                  },
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 112.0,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 16.0,
                  right: 8.0,
                  bottom: 16.0,
                ),
                child: ElevatedButton(
                  child: Text('Agenda',
                      style: TextStyle(
                        fontSize: 24.0,
                      )),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.teal[300]),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/book');
                  },
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 112.0,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 16.0,
                  right: 8.0,
                  bottom: 8.0,
                ),
                child: ElevatedButton(
                  child: Text('Lista de Clientes',
                      style: TextStyle(
                        fontSize: 24.0,
                      )),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.teal[300]),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/customers_list');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
