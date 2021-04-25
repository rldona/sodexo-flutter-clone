import 'package:flutter/material.dart';
import 'package:sodexo_clone/src/widgets/credit_card_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _primaryColor = Color.fromRGBO(40, 56, 151, 1);

  var _items = [
    {
      'type': 'image',
      'title': 'assets/images/home_card.png',
      'subtitle': '',
      'amount': '33,74',
      'otherText': 'Último cambio:'
    },
    {
      'type': 'amount',
      'title': 'Saldo disponible',
      'subtitle': '',
      'amount': '33,74',
      'otherText': 'Último cambio:'
    },
    {
      'type': 'button',
      'title': 'Movimientos',
      'subtitle': '',
      'amount': '',
      'otherText': 'Último cambio:'
    },
    {
      'type': 'header',
      'title': 'DETALLES',
      'subtitle': '',
      'amount': '',
      'otherText': 'Último cambio:'
    },
    {
      'type': 'text',
      'title': 'ID tarjeta',
      'subtitle': '2942546038198445',
      'amount': '',
      'otherText': ''
    },
    {
      'type': 'text',
      'title': 'PIN',
      'subtitle': 'Mostrar PIN',
      'amount': '',
      'otherText': ''
    },
    {
      'type': 'text',
      'title': 'Estado',
      'subtitle': 'ACTIVA',
      'amount': '',
      'otherText': 'Último cambio:'
    },
    {
      'type': 'button',
      'title': 'Condiciones de uso',
      'subtitle': '',
      'amount': '',
      'otherText': 'Último cambio:',
    },
  ];

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
                  onTap: () => Navigator.popAndPushNamed(context, '/my-cards'),
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
                  onTap: () =>
                      Navigator.popAndPushNamed(context, '/notifications'),
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
                  onTap: () =>
                      Navigator.popAndPushNamed(context, '/restaurant-list'),
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
                  onTap: () =>
                      Navigator.popAndPushNamed(context, '/my-account'),
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
                  onTap: () =>
                      Navigator.popAndPushNamed(context, '/legal-terms'),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            final item = _items[index];

            final tileImageWidget = Container(
              color: Color.fromRGBO(242, 243, 249, 1),
              padding:
                  EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 20),
              child: CreditCardWidget(),
            );

            final tileTextWidget = Column(
              children: [
                ListTile(
                  title: Text(
                    item['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: item['otherText'].length > 0
                      ? Text(item['otherText'])
                      : null,
                  trailing: Text(
                    item['subtitle'],
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  minLeadingWidth: 30,
                  contentPadding:
                      EdgeInsets.only(top: 15, left: 35, right: 35, bottom: 15),
                  onTap: null,
                ),
                Divider(
                  height: 1,
                  color: Colors.grey[500],
                ),
              ],
            );

            final tileButtonWidget = Column(
              children: [
                ListTile(
                  title: Text(
                    item['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                  minLeadingWidth: 30,
                  contentPadding:
                      EdgeInsets.only(top: 15, left: 35, right: 35, bottom: 15),
                  leading: Icon(
                    Icons.money_outlined,
                    size: 30,
                  ),
                  onTap: null,
                ),
                Divider(
                  height: 1,
                  color: Colors.grey[500],
                ),
              ],
            );

            final tileAmoutWidget = Column(
              children: [
                ListTile(
                  title: Text(
                    item['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                  trailing: Text(
                    item['amount'] + ' €',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  minLeadingWidth: 30,
                  contentPadding:
                      EdgeInsets.only(top: 15, left: 35, right: 35, bottom: 15),
                  leading: Icon(
                    Icons.money_outlined,
                    size: 30,
                  ),
                  onTap: null,
                ),
                Divider(
                  height: 1,
                  color: Colors.grey[500],
                ),
              ],
            );

            final tileHeader = Container(
              padding: EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 0),
              color: Colors.grey[100],
              child: ListTile(
                title: Text(
                  item['title'],
                ),
              ),
            );

            // Crear funcion que cree el widget

            if (item['type'] == 'image') {
              return tileImageWidget;
            }

            if (item['type'] == 'amount') {
              return tileAmoutWidget;
            }

            if (item['type'] == 'text') {
              return tileTextWidget;
            }

            if (item['type'] == 'button') {
              return tileButtonWidget;
            }

            return tileHeader;
          },
        ),
      ),
    );
  }
}
