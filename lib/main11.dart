import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gfe_app_v1/Pages/home2.dart';
import 'package:gfe_app_v1/Pages/profile_page.dart';
import 'package:gfe_app_v1/Pages/search_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget{
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PageController _pageController = PageController();
  List<Widget> _screen = [
  HomiePage(), ProfilePage(), SearchPage()
  ];
  void _onPageChanged(int index){
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),

      bottomNavigationBar: CurvedNavigationBar(
          color: Colors.black12,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.white,
          height: 67,
          animationDuration: Duration(milliseconds: 200),
          animationCurve: Curves.bounceInOut,
          items:
          <Widget>
          [Icon(Icons.all_inclusive,color: Colors.green, size: 20),
            Icon(Icons.local_grocery_store,color: Colors.green, size: 20, ),
            Icon(Icons.build,color: Colors.green, size: 20)],
          onTap: (index) {
            debugPrint("index is $index");
            _pageController.jumpToPage(index);
          }
      ),
    );
  }
}