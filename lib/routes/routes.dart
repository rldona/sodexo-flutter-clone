import 'package:flutter/material.dart';

import 'package:sodexo_clone/src/pages/guest_page.dart';
import 'package:sodexo_clone/src/pages/home_page.dart';
import 'package:sodexo_clone/src/pages/login_page.dart';
import 'package:sodexo_clone/src/pages/onboarding_page.dart';
import 'package:sodexo_clone/src/pages/my_cards.dart';
import 'package:sodexo_clone/src/pages/notifications.dart';
import 'package:sodexo_clone/src/pages/restaurant_list.dart';
import 'package:sodexo_clone/src/pages/my_account.dart';
import 'package:sodexo_clone/src/pages/legal_terms.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/onboarding': (BuildContext context) => OnboardingPage(),
    '/login': (BuildContext context) => LoginPage(),
    '/guest': (BuildContext context) => GuestPage(),
    '/home': (BuildContext context) => HomePage(),
    '/my-cards': (BuildContext context) => MyCards(),
    '/notifications': (BuildContext context) => Notifications(),
    '/restaurant-list': (BuildContext context) => RestaurantList(),
    '/my-account': (BuildContext context) => MyAccount(),
    '/legal-terms': (BuildContext context) => LegalTerms(),
  };
}
