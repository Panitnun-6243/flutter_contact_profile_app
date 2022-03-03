import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact Profile',
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
              onPressed: () {
                print("Contact is starred");
              },
            )
          ],
        ),
        body: Container(
          color: Colors.grey,
        ),
      ),
    );
  }
}
