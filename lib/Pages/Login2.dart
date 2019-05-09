import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

class Login2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Login 2",
      theme: new ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFFE8716D),
        primaryColor: Color(0xFFE8716D),
        buttonColor: Color(0xFFE8716D),
        primaryColorDark: Color(0xFFE8716D),
      ),
      home: new Login2Func(),
    );
  }
}

class Login2Func extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Login2State();
  }
}

class Login2State extends State<Login2Func> {
  Container buildTitle() {
    return Container(
      padding: const EdgeInsets.only(bottom: 8.0),
      alignment: Alignment.bottomCenter,
      height: 60.0,
      child: Text(
        "Welcome",
        style: TextStyle(fontSize: 18.0, color: Colors.white),
      ),
    );
  }

  SizedBox buildFacebookBtn() {
    return SizedBox(
      width: 250.0,
      child: FlatButton(
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          onPressed: () {},
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                GroovinMaterialIcons.facebook,
                size: 16.0,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text('Sign in with Facebook')
            ],
          )),
    );
  }

  Padding buildText(String txt, double fontSize) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        txt,
        style: TextStyle(color: Colors.grey, fontSize: fontSize),
      ),
    );
  }

  Padding buildInputField(
    String labelText,
    String hintText,
    bool isObscured,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
        ),
        obscureText: isObscured,
      ),
    );
  }

  SizedBox buildSignInBtn() {
    return SizedBox(
      width: 250.0,
      child: RaisedButton(
        onPressed: () {},
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        color: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        child: Text("Sign in with email"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16.0, kToolbarHeight, 16.0, 16.0),
        children: <Widget>[
          Align(
            child: SizedBox(
              width: 320.0,
              child: Card(
                color: Colors.black45,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    buildTitle(),
                    buildFacebookBtn(),
                    buildText("or", 12.0),
                    buildText("Sign up with your email address", 12.0),
                    SizedBox(
                      height: 32.0,
                    ),
                    buildInputField("Email", "your@email.com", false),
                    SizedBox(
                      height: 10.0,
                    ),
                    buildInputField("Password", "", true),
                    SizedBox(
                      height: 18.0,
                    ),
                    buildSignInBtn(),
                    buildText(
                        "By signing up you agress with our Terms & Conditions.",
                        10.0),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
