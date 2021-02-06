import 'package:flutter/cupertino.dart';

class CompanyModel {
  final String name;
  final int established;
  final int numberOfEmployees;
  final City location;

  CompanyModel(
      {@required this.name,
      @required this.established,
      @required this.numberOfEmployees,
      @required this.location});
}

enum City { goa, mumbai }
