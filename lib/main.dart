import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yusuke/main_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'yusukeのアプリ',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('yusukeのアプリ'),
            ),
          body: Consumer<MainModel>(builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      model.kboyText,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    RaisedButton(
                      child: Text('ボタン'),
                      onPressed: () {
                        // TODO　ここでなにかする
                        model.changeKboyText();
                      },
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}