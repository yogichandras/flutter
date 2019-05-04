import 'package:flutter/material.dart';
import './products.dart';

class ManageProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          AppBar(
            title: Text("Choose"),
          ),
          ListTile(
            title: Text("List Product"),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ProductsPage()));
            },
          )
        ],
      )),
      appBar: AppBar(
        title: Text("Manage Product"),
      ),
      body: Center(
        child: Text("Manage Your Product"),
      ),
    );
  }
}
