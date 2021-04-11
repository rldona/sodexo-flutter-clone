import 'package:flutter/material.dart';

import 'package:sodexo_clone/src/pages/guest_page.dart';
import 'package:sodexo_clone/src/pages/home_page.dart';
import 'package:sodexo_clone/src/pages/login_page.dart';
import 'package:sodexo_clone/src/pages/onboarding_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/onboarding': (BuildContext context) => OnboardingPage(),
    '/login': (BuildContext context) => LoginPage(),
    '/guest': (BuildContext context) => GuestPage(),
    '/home': (BuildContext context) => HomePage(),
  };
}
