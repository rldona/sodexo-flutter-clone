import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: new BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(15.0),
              topRight: const Radius.circular(15.0),
              bottomLeft: const Radius.circular(15.0),
              bottomRight: const Radius.circular(15.0)),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 15, left: 5, right: 5, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '459340*******7441',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Text('RAÚL CARMELO LÓPEZ DOÑA', style: TextStyle(fontSize: 16)),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text('ACTIVA'),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    children: [
                      Text('Válida hasta: '),
                      Text('01/23', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
