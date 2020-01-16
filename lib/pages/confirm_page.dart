import 'package:flutter/material.dart';
import 'package:flutter_scopedmodel_counter/pages/detail_page.dart';
import 'package:flutter_scopedmodel_counter/scoped_models/main_model.dart';
import 'package:scoped_model/scoped_model.dart';

class ConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Confirm Page")),
      body: ScopedModelDescendant<MainModel>(
          builder: (BuildContext context, Widget child, MainModel model) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Your counter value is: ${model.count}',
                style: TextStyle(fontSize: 18.0),
              ),
              RaisedButton(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Confirm'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<DetailPage>(
                          builder: (BuildContext context) => DetailPage()),
                    );
                  })
            ],
          ),
        );
      }),
    );
  }
}
