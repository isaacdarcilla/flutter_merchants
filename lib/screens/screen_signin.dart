import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_merchants/screens/screen_signup.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen>
    with AutomaticKeepAliveClientMixin<SigninScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Center(
              child: Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 120,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 30),
            FlatButton(
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(
                      width: 2.0, color: Color.fromRGBO(236, 138, 92, 1))),
              color: Colors.white,
              textColor: Color.fromRGBO(236, 138, 92, 1),
              padding: EdgeInsets.only(left: 30, right: 30),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.g_translate),
                      color: Colors.blue,
                      onPressed: () {}),
                  Text(
                    "Continue with Facebook",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            FlatButton(
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: BorderSide(
                      width: 2.0, color: Color.fromRGBO(236, 138, 92, 1))),
              color: Colors.white,
              textColor: Color.fromRGBO(236, 138, 92, 1),
              padding: EdgeInsets.only(left: 30, right: 30),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.g_translate),
                      color: Colors.redAccent,
                      onPressed: () {}),
                  Text(
                    "Continue with Google",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0, 10.0, 0),
                          child: Text(
                            "Email Address",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                    new TextFormField(
                      textInputAction: TextInputAction.next,
                      autofocus: true,
                      onChanged: (value) {
                        print(value);
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'The field is required.';
                        } else if (value.length < 4) {
                          return 'The field must be at least 6 characters.';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Enter your email address",
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5)),
                        contentPadding: EdgeInsets.all(0.0),
                        // enabledBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: Colors.transparent,
                        //   ),
                        //   borderRadius: BorderRadius.circular(5.0),
                        // ),
                        // hintText: "Enter your email address",
                        // prefixIcon: Icon(
                        //   Icons.perm_identity,
                        //   color: Colors.black,
                        // ),
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    SizedBox(
                      height: 30,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0, 10.0, 0),
                          child: Text(
                            "Password",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                    new TextFormField(
                      textInputAction: TextInputAction.next,
                      autofocus: true,
                      onChanged: (value) {
                        print(value);
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'The field is required.';
                        } else if (value.length < 4) {
                          return 'The field must be at least 6 characters.';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Enter your password",
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5)),
                        contentPadding: EdgeInsets.all(0.0),
                        // enabledBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: Colors.transparent,
                        //   ),
                        //   borderRadius: BorderRadius.circular(5.0),
                        // ),
                        // hintText: "Enter your email address",
                        // prefixIcon: Icon(
                        //   Icons.perm_identity,
                        //   color: Colors.black,
                        // ),
                        hintStyle: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    FlatButton(
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(
                              color: Color.fromRGBO(236, 138, 92, 1))),
                      color: Color.fromRGBO(236, 138, 92, 1),
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          print("Submit");
                        }
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(fontSize: 14, color: Colors.black54)),
                TextSpan(
                    text: "Sign up here",
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(236, 138, 92, 1))),
              ]),
            ),
            SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "By proceeding, you agree to our ",
                    style: TextStyle(fontSize: 12, color: Colors.black54)),
                TextSpan(
                    text: "Terms of Use",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(236, 138, 92, 1))),
                TextSpan(
                    text: " and confirm to have read our ",
                    style: TextStyle(fontSize: 12, color: Colors.black54)),
                TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(236, 138, 92, 1))),
              ]),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
