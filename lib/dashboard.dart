import 'package:flutter/material.dart';
import 'package:lerapp/login_page.dart';

class Dashboard extends StatelessWidget {
  get loginAction => loginAction;

  String get loginError => loginError;

  @override
  Widget build(BuildContext context) {
    final avatar = Padding(
      padding: EdgeInsets.all(20),
      child: Hero(
          tag: 'hero',
          child: SizedBox(
            height: 160,
            child: Image.asset('assets/logo_aqua.png'),
          )),
    );

    final description = Padding(
      padding: EdgeInsets.all(1),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            text:
                'Welcome to the Lactation Education Resources Breastfeeding Assistant. Click the icons below to select an activity.',
            style: TextStyle(color: Colors.black, fontSize: 20)),
      ),
    );

    final buttonLogout = FlatButton(
        child: Text(
          'Logout',
          style: TextStyle(color: Colors.black87, fontSize: 16),
        ),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => LoginPage(loginAction, loginError)));
        });

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: <Widget>[
            avatar,
            description,
            buttonLogout,
          ],
        ),
      ),
    ));
  }
}
