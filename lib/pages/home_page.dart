import 'package:flutter/material.dart';
import 'package:flutter_english_play/widget/questao_wid.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                Text('50 pontos',
                  style: Theme.of(context).accentTextTheme.body2,
                )
              ],
            ),
            Divider(height: 10,),
            Questao(),
          ],
        ),
      ),
    );
  }




}

