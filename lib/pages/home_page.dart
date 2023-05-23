import 'package:flutter/material.dart';
import 'package:groceryshop_app/pages/next_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(80.0),
          child: Image.asset('images/a.jpg'),
        ),
        const Padding(
          padding: const EdgeInsets.only(
              left: 80.0, right: 80, bottom: 40, top: 160),
          child: Text(
            'We deliver groceries at your doorstep',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
          ),
        ),
        Text('Fresh items everyday'),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return const NextPage();
            },
          )),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Get Started',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Spacer()
      ]),
    );
  }
}
