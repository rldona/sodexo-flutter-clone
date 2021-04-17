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
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: _primaryColor),
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Drawer(
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
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, '/login'),
                  child: Text(
                    'CERRAR SESIÓN',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
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
                SizedBox(
                  height: 30,
                ),
                ListTile(
                  leading: Icon(Icons.credit_card_outlined),
                  minLeadingWidth: 25,
                  title: Text(
                    'Mis tarjetas',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  onTap: null,
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.notifications_active_outlined),
                  title: Text(
                    'Notificaciones',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  minLeadingWidth: 25,
                  trailing: CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.red,
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  onTap: null,
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.add_location_outlined),
                  minLeadingWidth: 25,
                  title: Text(
                    'Restaurantes',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  onTap: null,
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.account_circle_outlined),
                  minLeadingWidth: 25,
                  title: Text(
                    'Mi cuenta',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  onTap: null,
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.paste),
                  minLeadingWidth: 25,
                  title: Text(
                    'Términos legales',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  onTap: null,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            ListTile(
              leading: Icon(
                Icons.money_outlined,
                size: 30,
              ),
              minLeadingWidth: 30,
              contentPadding:
                  EdgeInsets.only(top: 20, left: 35, right: 35, bottom: 20),
              title: Text(
                'Saldo disponible',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: Text(
                '33,74 €',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: null,
            ),
            Divider(
              height: 1,
              color: Colors.grey[500],
            ),
            ListTile(
              leading: Icon(
                Icons.money_outlined,
                size: 30,
              ),
              minLeadingWidth: 30,
              contentPadding:
                  EdgeInsets.only(top: 20, left: 35, right: 35, bottom: 20),
              title: Text(
                'Movimientos',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
              onTap: null,
            ),
            Divider(
              height: 1,
              color: Colors.grey[500],
            ),
            Container(
              color: Colors.grey[100],
              child: ListTile(
                title: Text(
                  'DETALLES',
                ),
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey[500],
            ),
            ListTile(
              leading: Icon(
                Icons.money_outlined,
                size: 30,
              ),
              minLeadingWidth: 30,
              contentPadding:
                  EdgeInsets.only(top: 20, left: 35, right: 35, bottom: 20),
              title: Text(
                'Saldo disponible',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: Text(
                '33,74 €',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: null,
            ),
          ],
        ),
      ),
    );
  }
}
