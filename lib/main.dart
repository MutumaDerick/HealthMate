import 'package:flutter/material.dart';
import 'package:health_mate/pages/dashboard.dart';

void main() {
  runApp(HealthMateApp());
}

class HealthMateApp extends StatelessWidget {
  const HealthMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health Mate',
      home: const DashboardPage(),
      theme: ThemeData(
        primaryColor: Colors.lightBlue[900],
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.lightBlue[800]),
        textTheme: TextTheme(
          
          headlineMedium: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              headlineSmall: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 20, color: Colors.black),
          bodySmall: TextStyle(fontSize: 14, color: Colors.black),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent,
          textTheme: ButtonTextTheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(secondary: Colors.blueAccent),
        textTheme: TextTheme(
          headlineMedium: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 20, color: Colors.white),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ),

      themeMode: ThemeMode.system,
    );
  }
}
