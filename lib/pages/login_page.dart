import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English Play'),
        centerTitle: true
      ),
      body: Center(
        child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Identifique-se', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Login:',
              labelStyle: TextStyle(color: Colors.black)
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'senha',
              labelStyle: TextStyle(
                color: Colors.black
              )
            ),
          ),
        ],
        ),
        )
      )
    );
  }
}