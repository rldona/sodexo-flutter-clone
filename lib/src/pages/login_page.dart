import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var isSwitched = false;
  var isEnableLoginButton = true;

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
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                    ),
                  ),
                  SizedBox(
                    child: null,
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Contraseña',
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
                        onPressed: () => print('¿Has olvidado tu contraseña?'),
                        child: Text(
                          '¿Has olvidado tu contraseña?',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    padding: EdgeInsets.only(bottom: 5),
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
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                          activeTrackColor: Colors.blue,
                          activeColor: Colors.white,
                          inactiveTrackColor: Colors.grey[300],
                        ),
                      ],
                    ),
                  ),
                  //
                  // Sacar a un componente [LoginPage y GuestPage]
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: isEnableLoginButton
                                ? () => setState(() {
                                      isEnableLoginButton =
                                          !isEnableLoginButton;
                                    })
                                : null,
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
                              onPressed: () =>
                                  print('register button pressed!'),
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
      ),
      bottomNavigationBar: Container(
        child: SizedBox(
          width: double.infinity,
          height: 90,
          child: GestureDetector(
            onTap: () {
              print("Container clicked");
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
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
