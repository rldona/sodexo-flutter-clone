import 'package:flutter/material.dart';

class LegalTerms extends StatefulWidget {
  @override
  _LegalTermsState createState() => _LegalTermsState();
}

class _LegalTermsState extends State<LegalTerms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        title: Text('Términos legales', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Términos legales'),
      ),
    );
  }
}
