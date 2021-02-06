import 'package:flutter/material.dart';
import 'package:flutter_filtering/models/company_model.dart';

class SecondScreen extends StatelessWidget {
  final CompanyModel company;

  SecondScreen({@required this.company});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Company Details"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Company Name : ${company.name}"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Company Established : ${company.established.toString()}"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Number of Employees : ${company.numberOfEmployees.toString()}"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Company Location : ${company.location}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
