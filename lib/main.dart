import 'package:flutter/material.dart';

class RescueMealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rescue Meal',
      debugShowCheckedModeBanner: false, //to remove debug banner
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      resizeToAvoidBottomInset: true,
      body: Column(
        children: <Widget>[
          Container(
            child: _buildNameLogoCaption()
          ),
          Container(
            child: _buildButtons()
          ),
          Container(
            child: _buildFooter(),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text("LOGIN PAGE!"),
      centerTitle: true,
    );
  }

  Widget _buildNameLogoCaption() {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset('logo_lockup_flutter_horizontal.png'),
          Text("Build beautiful native apps in record time"),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 200.0,
            child: RaisedButton(
              child: Text('CREATE ACCOUNT'),
              onPressed: _createAccountPressed,
            ),
          ),
          SizedBox(
            width: 200.0,
            child: RaisedButton(
              child: Text('SIGN IN WITH FB'),
              onPressed: _signinWithFBPressed,
            ),
          ),
          SizedBox(
            width: 200.0,
            child: RaisedButton(
              child: Text('SIGN IN WITH GMAIL'),
              onPressed: _signinWithGmailPressed,
            ),
          ),
          FlatButton(
            child: Text('HAVE AN ACCOUNT? SIGN IN.'),
            onPressed: null,
          )
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return FlatButton(
      child: Text("BY PROCEEDING YOU AGREE THE TERMS & CONDITIONS*"),
      onPressed: null
      );
  }

  void _createAccountPressed() {
    print('The user wants to create an account');
  }

  void _signinWithFBPressed() {
    print('The user wants to signin with FB');
  }

  void _signinWithGmailPressed() {
    print('The user wants to signin with Gmail');
  }
}

void main() => runApp(new RescueMealApp());
