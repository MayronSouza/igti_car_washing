import 'package:flutter/material.dart';

class BookService extends StatefulWidget {
  @override
  _BookServiceState createState() => _BookServiceState();
}

class _BookServiceState extends State<BookService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendar Serviço'),
        backgroundColor: Colors.teal[300],
      ),
    );
  }
}
