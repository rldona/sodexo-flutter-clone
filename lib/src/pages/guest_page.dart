import 'package:flutter/material.dart';

class GuestPage extends StatefulWidget {
  GuestPage({Key key}) : super(key: key);

  @override
  _GuestPageState createState() => _GuestPageState();
}

class _GuestPageState extends State<GuestPage> {
  var _primaryColor = Color.fromRGBO(40, 56, 151, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: true,
      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Invitado'),
              ElevatedButton(
                onPressed: null,
                child: Text('Close Drawer'),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Image(image: AssetImage('assets/images/sodexo_guest.png')),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Icon(
                    Icons.credit_card,
                    color: _primaryColor,
                    size: 70.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Container(
                  child: Text(
                    "Para acceder a 'Mis tarjetas' debes iniciar sesión con tu cuenta o registrarte",
                    textAlign: TextAlign.center,
                  ),
                ),
                _loginAndRegister(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // sacar a un fichero component e importar
  Widget _loginAndRegister() {
    return Container(
      padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: _primaryColor, // background
                onPrimary: Colors.white, // foreground
                elevation: 0,
                shadowColor: Colors.transparent,
              ),
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/login'),
              child: Text(
                'Iniciar sesión',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            child: null,
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('¿No tienes cuenta aún?'),
              TextButton(
                onPressed: () => print('register button pressed!'),
                child: Text(
                  'Registrate',
                  style: TextStyle(color: _primaryColor),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
