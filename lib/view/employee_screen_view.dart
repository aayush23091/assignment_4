import 'package:flutter/material.dart';
import '../model/employee_model.dart';

class EmployeeScreenView extends StatelessWidget {
  const EmployeeScreenView({super.key});

  static const routeName = '/employee';

  static final List<EmployeeModel> employees = [
    EmployeeModel(
      empId: 1,
      fullName: "Aayush Yadav",
      gender: "Male",
      department: "IT",
      username: "aayush",
      password: "12345",
    ),
    EmployeeModel(
      empId: 2,
      fullName: "Priya Paudel",
      gender: "Female",
      department: "HR",
      username: "priya",
      password: "12345",
    ),
    EmployeeModel(
      empId: 3,
      fullName: "Rahul Shrestha",
      gender: "Male",
      department: "Finance",
      username: "rahul",
      password: "12345",
    ),
    EmployeeModel(
      empId: 4,
      fullName: "Ananya Sharma",
      gender: "Female",
      department: "Marketing",
      username: "ananya",
      password: "12345",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employees"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(15),
        itemCount: employees.length,
        separatorBuilder: (_, __) => const SizedBox(height: 15),
        itemBuilder: (context, index) {
          final emp = employees[index];

          return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    emp.fullName,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const Divider(),

                  Text("Employee ID : ${emp.empId}"),
                  Text("Gender : ${emp.gender}"),
                  Text("Department : ${emp.department}"),
                  Text("Username : ${emp.username}"),
                  Text("Password : ${emp.password}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}