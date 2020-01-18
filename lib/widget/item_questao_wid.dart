import 'package:flutter/material.dart';

class ItemQuestao extends StatefulWidget {
  //ItemQuestao({Key key}) : super(key: key);

  String pergunta='';
  String letra ='';
  bool certa;
  Function setaResultado;

  ItemQuestao({String pergunta, String letra, bool certa, Function setaResultado}) {
    this.pergunta=pergunta; 
    this.letra=letra;
    this.certa=certa;
    this.setaResultado=setaResultado;
    }

  @override
  _ItemQuestaoState createState() => _ItemQuestaoState(pergunta, letra, certa, setaResultado);
}

class _ItemQuestaoState extends State<ItemQuestao> {
  var pergunta;
  var letra;
  bool certa;
  var setaResultado;

  _ItemQuestaoState(this.pergunta, this.letra, this.certa, this.setaResultado);
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Row(
         children: <Widget>[
           RaisedButton(
             onPressed: ()=>setaResultado(this.certa),
             color: Colors.amber,
             child: Text(letra),             
           ),
           Padding(padding: EdgeInsets.all(8)),
           Expanded(child: Text(pergunta, 
           style: TextStyle( fontSize: 20),
           ),
           ),
         ],
       ),
    );
  }
}