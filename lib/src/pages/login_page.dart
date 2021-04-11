import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _isSwitched = false;
  var _isEnableLoginButton = true;
  var _passwordVisible = true;
  var _primaryColor = Color.fromRGBO(40, 56, 151, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 50.0),
              child: Column(
                children: [
                  Text(
                    'Iniciar sesión',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    child: null,
                    height: 10,
                  ),
                  Text(
                    'Si ya estás registrado en MySodexo accede con tus claves',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  TextField(
                    obscureText: false,
                    cursorColor: _primaryColor,
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: _primaryColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: null,
                    height: 30,
                  ),
                  TextField(
                    obscureText: _passwordVisible,
                    cursorColor: _primaryColor,
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[300]),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: _primaryColor),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: _primaryColor,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: null,
                        height: 30,
                        width: 30,
                      ),
                      TextButton(
                        onPressed: () => print(
                          '¿Has olvidado tu contraseña?',
                        ),
                        child: Text(
                          '¿Has olvidado tu contraseña?',
                          textAlign: TextAlign.right,
                          style: TextStyle(color: _primaryColor),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    padding: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.grey[300], width: 1),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Activar inicio de sesión por huella',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        FlutterSwitch(
                          width: 50.0,
                          height: 30.0,
                          toggleSize: 28.0,
                          value: _isSwitched,
                          borderRadius: 20.0,
                          padding: 1.5,
                          toggleColor: Color.fromRGBO(255, 255, 255, 1),
                          activeColor: _primaryColor,
                          inactiveColor: Colors.grey[300],
                          onToggle: (val) {
                            setState(() {
                              _isSwitched = val;
                              _isEnableLoginButton = !_isEnableLoginButton;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  //
                  // Sacar a un componente [LoginPage y GuestPage]
                  _loginAndRegister(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: SizedBox(
          width: double.infinity,
          height: 90,
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/guest');
            },
            child: Container(
              padding: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[300], width: 1),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text(
                    "Acceder como invitado",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: _primaryColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // sacar a un fichero component e importar
  Widget _loginAndRegister() {
    return Container(
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
              onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
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
