import 'package:flutter/material.dart';
import 'package:palma/paginas/iniciar.dart';

void main() {
  runApp(const MyAplicacion());
}

class MyAplicacion extends StatelessWidget {
  const MyAplicacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cybercafe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Paginainicio(),
    );
  }
}
