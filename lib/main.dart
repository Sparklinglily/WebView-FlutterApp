import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'homePage.dart';

void main() {
 // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black87),
          color: Colors.orangeAccent,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.orangeAccent
          )
        ),
        primaryColor: Colors.orangeAccent
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}

