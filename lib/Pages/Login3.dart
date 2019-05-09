import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Login 3",
      color: Colors.black,
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: new Login3Func(),
    );
  }
}

class Login3Func extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    SystemChrome.setEnabledSystemUIOverlays([]);
    return new Login3State();
  }
}

class Login3State extends State<Login3Func> {
  @override
  void initState() {
    super.initState();
  }

  Container buildContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.5,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFf45d27), Color(0xFFf5851f)]),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.person,
              size: 90,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 32, bottom: 32),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildTextField(BuildContext context, String hintText,
      double marginVal, IconData iconVal, TextInputAction textAction) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: 50,
      margin: EdgeInsets.only(top: marginVal),
      padding: EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
      child: TextField(
        textInputAction: textAction,
        decoration: InputDecoration(
          border: InputBorder.none,
            icon: Icon(
              iconVal,
              color: Colors.grey,
            ),
            hintText: hintText),
      ),
    );
  }

  Align buildForgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 16, right: 40),
        child: Text(
          "Forgot password?",
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ),
    );
  }

  Container buildLoginButton(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 50),
      width: MediaQuery.of(context).size.width / 1.2,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xFFf5851f), Color(0xFFf45d27)]),
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Center(
          child: Text(
        "Login".toUpperCase(),
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            buildContainer(context),
            Container(
              padding: EdgeInsets.only(top: 62),
              child: Column(
                children: <Widget>[
                  buildTextField(
                      context, "Email", 0.0, Icons.email, TextInputAction.next),
                  buildTextField(context, "Password", 32.0, Icons.vpn_key,
                      TextInputAction.send),
                  buildForgotPassword(),
                  buildLoginButton(context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
