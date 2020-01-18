import 'package:flutter/material.dart';
import 'package:flutter_english_play/widget/questao_wid.dart';


int pontos=50;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  Function acertaPonto(bool acertou){
    setState(() {
      if (acertou){
        pontos++;
      } else {
        pontos--;
      }      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English Play'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child:
                  Text('Marcio Sansone',
                    style: Theme.of(context).accentTextTheme.body1,
                  ),
                ),
                Text(pontos.toString()+' pontos',
                  style: Theme.of(context).accentTextTheme.body2,
                )
              ],
            ),
            Divider(height: 10,),
            Questao(pontuacao: acertaPonto,),
          ],
        ),
      ),
    );
  }




}

