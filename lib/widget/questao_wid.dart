import 'package:flutter/material.dart';
import 'package:flutter_english_play/widget/item_questao_wid.dart';

String resultado='';

class Questao extends StatefulWidget {
//  Questao({Key key}) : super(key: key);
  Function pontuacao;
  Questao({Function pontuacao}){
    this.pontuacao=pontuacao;
  }
  @override
  _QuestaoState createState() => _QuestaoState(pontuacao);
}

class _QuestaoState extends State<Questao> {
  var pontuacao;

  Function setResultado(bool xresultado){
    String saida;
    pontuacao(xresultado);
    if (xresultado){
      saida='Parabéns!';
    }
  else {
    saida='Errado!';
    }
    setState(() {
      resultado=saida;
    });
  }

  _QuestaoState(this.pontuacao);
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Container(
         alignment: Alignment.centerLeft,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Divider(),
             Text('Questão: '+resultado, style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold),),
             Divider(),
             Text('What is the plural of man?',
              style: TextStyle( fontSize: 22, fontWeight: FontWeight.normal),),
             Divider(),
             ItemQuestao(letra: 'A' ,pergunta: 'mans', certa: false, setaResultado: setResultado,),
             ItemQuestao(letra: 'B' ,pergunta: 'mas', certa: false, setaResultado: setResultado,),             
             ItemQuestao(letra: 'C' ,pergunta: 'men', certa: true, setaResultado: setResultado,),
             ItemQuestao(letra: 'D' ,pergunta: 'people', certa: false, setaResultado: setResultado,),
             ItemQuestao(letra: 'E' ,pergunta: 'some', certa: false, setaResultado: setResultado,),
           ],
         )
       ),
    );
  }
}
