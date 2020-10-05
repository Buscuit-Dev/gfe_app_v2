

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class HomiePage extends StatefulWidget{
  HomiePage({Key key}) : super(key: key);

  @override
  _HomiePageState createState() => _HomiePageState();
}

class _HomiePageState extends State<HomiePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("images/solarbg2.jpg"), fit: BoxFit.cover)),
    
    child:Scaffold(
      backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: AppBar(
            backgroundColor: Colors.blueAccent
        ),
        ),
      body: WebView(
          initialUrl: 'https://goodfaithenergy.com',
          javascriptMode: JavascriptMode.unrestricted,
        ),


        )

    );

  }
}