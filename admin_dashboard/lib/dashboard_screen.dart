import 'package:flutter/material.dart';
import 'navigation_drawer.dart' as navigation_drawer;
import 'analytics_card.dart';
import 'employee_table.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      drawer: const navigation_drawer.NavigationDrawer(),

      body: const SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnalyticsCard(
                    title: 'Employees',
                    count: '120',
                    icon: Icons.people),
                AnalyticsCard(
                    title: 'Pending Requests',
                    count: '15',
                    icon: Icons.hourglass_top),
                AnalyticsCard(
                    title: 'Departments',
                    count: '8',
                    icon: Icons.apartment),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Employee Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
           ),
            EmployeeTable(),
          ],
        ),
      ),
    );
  }
}
