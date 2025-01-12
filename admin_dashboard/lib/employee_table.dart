import 'package:flutter/material.dart';

class EmployeeTable extends StatelessWidget {
  const EmployeeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('ID')),
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Role')),
        DataColumn(label: Text('Status')),
      ],
      rows: const [
        DataRow(cells: [
          DataCell(Text('001')),
          DataCell(Text('John Doe')),
          DataCell(Text('Manager')),
          DataCell(Text('Active')),
        ]),
        DataRow(cells: [
          DataCell(Text('002')),
          DataCell(Text('Jane Smith')),
          DataCell(Text('Developer')),
          DataCell(Text('Inactive')),
        ]),
      ],
    );
  }
}
