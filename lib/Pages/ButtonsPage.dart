import 'package:flutter/material.dart';
import 'package:login_app/Pages/Login.dart';
import 'package:login_app/Pages/Login2.dart';
import 'package:login_app/Pages/Login3.dart';

enum PageType {
  Login1,
  Login2,
  Login3
}

class ButtonsPage extends StatelessWidget {
  Route route;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Select a Page"),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildCenterButton(context, "Login 1", PageType.Login1),
              buildCenterButton(context, "Login 2", PageType.Login2),
              buildCenterButton(context, "Login 3", PageType.Login3),
            ],
          ),
        ],
      ),
    );
  }

  Center buildCenterButton(BuildContext context, String btnText,
      PageType pageType) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: new SizedBox(
          width: 220.0,
          height: 40.0,
          child: RaisedButton(
            onPressed: () {
              if(pageType == PageType.Login1){
                route = MaterialPageRoute(builder: (context) => Login());
              }
              else if(pageType == PageType.Login2){
                route = MaterialPageRoute(builder: (context) => Login2());
              }
              else if(pageType == PageType.Login3){
                route = MaterialPageRoute(builder: (context) => Login3());
              }


              Navigator.push(context, route);
            },
            child: Text(btnText),
          ),
        ),
      ),
    );
  }
}
