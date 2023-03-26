import 'package:flutter/material.dart';
import 'package:ui_from_actual_apps/views/moovit_bus_station_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
          ),
        ),
        useMaterial3: true,
      ),
      home: MoovitStationDetails(),
    );
  }
}
