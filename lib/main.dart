import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sweet_store/screens/my_profile/my_profile.dart';
import 'package:sweet_store/screens/product_overview/product_overview.dart';
import 'package:sweet_store/screens/review_cart/review_cart.dart';
import 'package:sweet_store/screens/search/search.dart';
import 'auth/sign_in.dart';
import 'screens/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}