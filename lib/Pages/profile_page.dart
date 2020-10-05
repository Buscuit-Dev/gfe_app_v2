import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProfilePage extends StatefulWidget{
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('GFE Shop', style: TextStyle(
        color: Colors.black),
    )
      ),
      body: WebView(
        initialUrl: 'https://goodfaithenergy.com/shop',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}