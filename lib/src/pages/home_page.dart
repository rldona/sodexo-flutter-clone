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
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Raúl López',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'raulcarmelo.lopez@orange.com',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () => print('register button pressed!'),
                child: Text(
                  'CERRAR SESIÓN',
                  style: TextStyle(
                    fontSize: 15,
                    color: _primaryColor,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 1,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
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
