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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: SizedBox(
                width: double.infinity,
                height: 100.0,
                child: ElevatedButton(
                  child: Text('Cadastro de Clientes',
                      style: TextStyle(
                        fontSize: 24.0,
                      )),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.teal[300]),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: SizedBox(
                width: double.infinity,
                height: 100.0,
                child: ElevatedButton(
                  child: Text('Agendar Serviço',
                      style: TextStyle(
                        fontSize: 24.0,
                      )),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.teal[300]),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: SizedBox(
                width: double.infinity,
                height: 100.0,
                child: ElevatedButton(
                  child: Text('Agenda',
                      style: TextStyle(
                        fontSize: 24.0,
                      )),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.teal[300]),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: SizedBox(
                width: double.infinity,
                height: 100.0,
                child: ElevatedButton(
                  child: Text('Lista de Clientes',
                      style: TextStyle(
                        fontSize: 24.0,
                      )),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.teal[300]),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
