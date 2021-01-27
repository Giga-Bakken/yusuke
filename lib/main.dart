import 'package:flutter/material.dart';
import 'package:yusuke/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'yusukeのパドックアプリ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = ['yusuke1', 'yusuke2', 'yusuke3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('yusukeのアプリ'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(100, (index) {
            return Column(
              children: [
                Expanded(
                  child: Image.network(
                      'https://pbs.twimg.com/profile_images/1287121496901443584/Yoqq8dxL_400x400.jpg',
                  ),
                ),
                Text('yusuke $index')
              ],
            );
          }),
        ),
      ),
    );
  }
}
