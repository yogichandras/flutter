import 'package:flutter/material.dart';
import '../pages/products.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/list.jpg',
                        width: 100,
                      )),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Username'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 0, 50, 20),                    
                    child: RaisedButton(
                      child: Text("Login"),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: (){},
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
