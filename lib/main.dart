import 'package:flutter/material.dart';
import 'package:reto1/view1.dart';
import 'package:reto1/view2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            backgroundColor: Color.fromARGB(255, 9, 78, 182),
            title: Text('Manuel Desinger'),
          ),

          //aqui puede cambiar las vistas de cada una
          body: View2(),
        ));
  }
}
