import 'package:flutter/material.dart';

class Questao extends StatefulWidget {
  Questao({Key key}) : super(key: key);

  @override
  _QuestaoState createState() => _QuestaoState();
}

class _QuestaoState extends State<Questao> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Container(
         alignment: Alignment.centerLeft,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Divider(),
             Text('Questão: ', style: TextStyle(fontWeight: FontWeight.bold),),
             Divider(),
             Text('What is the plural of man?'),
             Divider(),
             Text('A) mans'),
             Text('B) mas'),
             Text('C) men'),
             Text('D) people'),
             Text('E) some'),
             

           ],
         )
       ),
    );
  }
}