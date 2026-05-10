import 'package:flutter/material.dart';

import 'view/dashboard_screen_view.dart';
import 'view/employee_screen_view.dart';
import 'view/gridview_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 4',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
      home: const DashboardScreenView(),
      routes: {
        EmployeeScreenView.routeName: (context) =>
            const EmployeeScreenView(),

        GridviewScreen.routeName: (context) =>
            const GridviewScreen(),
      },
    );
  }
}