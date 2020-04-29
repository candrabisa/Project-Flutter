import 'package:asu/ui/color/color.dart';
import 'package:asu/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: LightColors.bakground, // navigation bar color
    statusBarColor: Color(0xffffb969), // status bar color
  ));

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Diri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: LightColors.abuabu,
              displayColor: LightColors.abuabu,
              fontFamily: 'Poppins'
            ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
