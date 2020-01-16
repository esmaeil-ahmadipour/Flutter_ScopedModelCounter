import 'package:flutter/material.dart';
import 'package:flutter_scopedmodel_counter/scoped_models/main_model.dart';
import 'package:scoped_model/scoped_model.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          AppBar(title: Text("Detail Page"),),
      body: ScopedModelDescendant<MainModel>(
          builder: (BuildContext context, Widget child, MainModel model) {
        return Center(
          child: Text(
            '${model.count}',
            style: TextStyle(fontSize: 80.0),
          ),
        );
      }),
    );
  }
}
