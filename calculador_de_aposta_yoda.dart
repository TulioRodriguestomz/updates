import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController valorAposta = TextEditingController();
  TextEditingController valorMult = TextEditingController();
  String info = 'QUANTIDADE DE GANHO';
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void refresh() {
    valorAposta.text = '';
    valorMult.text = '';
    setState(() {
      info = 'QUANTIDADE DE GANHO';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '\$\$ Aposta Yodão \$\$',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.monetization_on,
              color: Colors.amber,
              size: 150.0,
            ),
            Container(
              height: 45.0,
              padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
              child: RaisedButton(
                onPressed: null,
                child: Text(
                  'Calcular',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Text(
              info,
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

Widget buildarTextField() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: '',
      labelStyle: TextStyle(
        color: Colors.amber,
        fontSize: 20.0,
      ),
    ),
    textAlign: TextAlign.center,
    controller: null,
  );
}
