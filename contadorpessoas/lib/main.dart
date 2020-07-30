import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Home()
  )
  );
}

class title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:
        const Text("Casa do KBR:")),
      ),
    );
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoT = "Entra Cornao";

  void _changepeople(int delta){
    setState(() {
      _people+=delta;
      if(_people<10 && _people>=0)
        _infoT="Entra Cornao";
      else if(_people>=10)
        _infoT="Tem muito corno";
      else
        _infoT="Ta sumindo pessoa garai";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,

          children: <Widget>[
            Text("Numero de pessoas: $_people",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0)),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child:  RaisedButton(
                      child: Text("+1",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                      ),
                      onPressed: () {
                        _changepeople(1);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child:  RaisedButton(
                      child: Text("-1",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                      ),
                      onPressed: () {
                        _changepeople(-1);
                      },
                    ),
                  ),
                ]
            ),
            Text("$_infoT",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0))
          ],
        )
      ],
    );
  }
}


