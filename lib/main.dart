import 'package:flutter/material.dart';
import 'package:sodexo_clone/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Sacar a una clase getColor()
  final primaryColor = Color.fromRGBO(40, 56, 151, 0.15);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: primaryColor,
        ),
      ),
      initialRoute: '/home',
      routes: getAppRoutes(),
      // onGenerateInitialRoutes: null,
      // onGenerateRoute: null,
      // onUnknownRoute: null,
    );
  }
}
