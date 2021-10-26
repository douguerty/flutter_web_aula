import 'package:flutter/material.dart';

class TamanhoProporcional extends StatefulWidget {
  const TamanhoProporcional({Key? key}) : super(key: key);

  @override
  _TamanhoProporcionalState createState() => _TamanhoProporcionalState();
}

class _TamanhoProporcionalState extends State<TamanhoProporcional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tamanhos proporcionais'),
      ),
      body: Container(
        color: Colors.orange,
        /* 
        * Não é possivel usar nem em rows nem em columns pois não 
        * possui altura ou largura definida
        */
        // child: FractionallySizedBox(
        //   widthFactor: 0.5, //50%
        //   heightFactor: 0.5,
        //   alignment: Alignment.topLeft,
        //   child: Text("Tamanho proporcional"),
        // ),
        // Uma maneira é usando Flexible
        child: Column(
          children: [
            Flexible(
              child: FractionallySizedBox(
                widthFactor: 0.5, //50%
                heightFactor: 0.5,
                alignment: Alignment.topLeft,
                child: Text("Tamanho proporcional"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
