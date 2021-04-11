import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _primaryColor = Color.fromRGBO(40, 56, 151, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: _primaryColor, // background
              onPrimary: Colors.white, // foreground
              elevation: 0,
              shadowColor: Colors.transparent,
            ),
            onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
