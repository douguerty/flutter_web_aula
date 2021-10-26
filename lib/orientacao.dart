import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({Key? key}) : super(key: key);

  @override
  _OrientacaoState createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientação'),
      ),
      body: OrientationBuilder(
        builder: (context, orientacao) {
          // return Container(
          //   child: orientacao == Orientation.portrait
          //       ? Text('Portraint')
          //       : Text('Landscape'),
          // );
          return GridView.count(
            crossAxisCount: orientacao == Orientation.portrait ? 3 : 6,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.black,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.yellow,
              ),
            ],
          );
        },
      ),
    );
  }
}
