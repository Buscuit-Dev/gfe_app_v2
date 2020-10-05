import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SearchPage extends StatefulWidget{
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Generate Service Request', style: TextStyle(
        color: Colors.black),
    )
      ),
          body: WebView(
        initialUrl: 'https://goodfaithenergy.com/form',
      javascriptMode: JavascriptMode.unrestricted,
    ),
    );
  }
}