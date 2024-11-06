import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/Model/UserList.dart';

class UserTablePage extends StatelessWidget {
 
  final UserList userList ;

  const UserTablePage({super.key, required this.userList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Table'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Allow horizontal scrolling if the table overflows
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Birth Cert No')),
            DataColumn(label: Text('Username')),
            DataColumn(label: Text('Mobile No')),
            DataColumn(label: Text('Father Name')),
            DataColumn(label: Text('Mother Name')),
            DataColumn(label: Text('Father NID No')),
            DataColumn(label: Text('Mother NID No')),
            DataColumn(label: Text('Maritial Status')),
            DataColumn(label: Text('District')),
            DataColumn(label: Text('Division')),
            DataColumn(label: Text('Thana')),
            DataColumn(label: Text('Sub District')),
            DataColumn(label: Text('Village Name')),
            DataColumn(label: Text('Voter ID No')),
            DataColumn(label: Text('Partner Name')),
            DataColumn(label: Text('Partner NID No')),
            DataColumn(label: Text('Gender')),
            DataColumn(label: Text('DOB')),
            DataColumn(label: Text('Blood Group')),
          ],
          rows: userList.users.map((user) {
            return DataRow(
              cells: [
                DataCell(Text(user.birthCertificateNo)),
                DataCell(Text(user.username)),
                DataCell(Text(user.mobileNo)),
                DataCell(Text(user.fatherName)),
                DataCell(Text(user.motherName)),
                DataCell(Text(user.fatherNIDno)),
                DataCell(Text(user.motherNIDno)),
                DataCell(Text(user.maritialStatus)),
                DataCell(Text(user.district)),
                DataCell(Text(user.division)),
                DataCell(Text(user.thana)),
                DataCell(Text(user.subDistrict)),
                DataCell(Text(user.villageName)),
                DataCell(Text(user.voterIDno)),
                DataCell(Text(user.partnerName)),
                DataCell(Text(user.partnerNidno)),
                DataCell(Text(user.gender)),
                DataCell(Text(user.dob.toString())), // Format the DateTime as needed
                DataCell(Text(user.bloodGroup)),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}