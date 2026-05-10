import 'package:flutter/material.dart';

class DashboardScreenView extends StatelessWidget {
  const DashboardScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 36, 208, 21),
        foregroundColor: Colors.white,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 148, 128, 27),
              Color(0xff2575FC),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),

              const Icon(
                Icons.dashboard,
                size: 100,
                color: Colors.white,
              ),

              const SizedBox(height: 20),

              const Text(
                "Employee Dashboard",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 50),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
                child: ListTile(
                  leading: const Icon(
                    Icons.people,
                    color: Colors.deepPurple,
                    size: 35,
                  ),
                  title: const Text(
                    "Employee Screen",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("View all employee details"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pushNamed(context, '/employee');
                  },
                ),
              ),

              const SizedBox(height: 20),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
                child: ListTile(
                  leading: const Icon(
                    Icons.grid_view,
                    color: Colors.deepPurple,
                    size: 35,
                  ),
                  title: const Text(
                    "GridView Screen",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("3×3 image cards"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pushNamed(context, '/grid');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}