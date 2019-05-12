import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;
  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String _titleValue;
  String _desctiptionValue;
  double _priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Product Title',
            ),
            onChanged: (String value) {
              setState(() {
                _titleValue = value;
              });
            },
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: 'Product Description',
            ),
            onChanged: (String value) {
              setState(() {
                _desctiptionValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Product Price',
            ),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                _priceValue = double.parse(value);
              });
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text("Save"),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': _titleValue,
                'description': _desctiptionValue,
                'price': _priceValue,
                'image': 'assets/food.jpg'
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, '/');

              // if(titleValue != null){
              // widget.addProduct(product);
              // Navigator.pushReplacementNamed(context, '/');
              // }else{
              //   showDialog(
              //     context: context,
              //     builder: (BuildContext context){
              //       return AlertDialog(
              //         title: Text("Warning"),
              //         content: Text("Title field is required!"),
              //         actions: <Widget>[
              //           FlatButton(
              //             child: Text("Ok"),
              //             onPressed: (){
              //               Navigator.pop(context);
              //             },
              //           )
              //         ],
              //       );
              //     }
              //   );
              // }
            },
          )
        ],
      ),
    );
  }
}
