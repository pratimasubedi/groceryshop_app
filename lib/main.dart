import 'package:flutter/material.dart';
import 'package:groceryshop_app/model/cart_model.dart';
import 'package:groceryshop_app/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: HomePage(),
    // );
    return ChangeNotifierProvider(
        create: (context) => CartModel(),
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
  }
}
