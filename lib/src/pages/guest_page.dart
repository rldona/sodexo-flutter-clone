import 'package:flutter/material.dart';

class GuestPage extends StatefulWidget {
  GuestPage({Key key}) : super(key: key);

  @override
  _GuestPageState createState() => _GuestPageState();
}

class _GuestPageState extends State<GuestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dummy => [Remove AppBar]',
          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
        ),
        backgroundColor: Color(0xFFFFFFFF),
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
                    color: Colors.blue,
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
                Container(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () => print('login pressed!'),
                        child: Text('Iniciar sesión'),
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
                            child: Text('Registrate'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
