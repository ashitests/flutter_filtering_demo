import 'package:flutter/material.dart';
import 'package:flutter_filtering/data/dummy_data.dart';
import 'package:flutter_filtering/models/company_model.dart';
import 'package:flutter_filtering/views/second_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  City currentCity = City.goa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            DropdownButton(
                value: currentCity,
                items: [
                  DropdownMenuItem(
                    child: Text(City.goa.toString()),
                    value: City.goa,
                  ),
                  DropdownMenuItem(
                    child: Text(City.mumbai.toString()),
                    value: City.mumbai,
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    currentCity = value;
                  });
                }),
            SizedBox(
              height: 30,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (CompanyModel company in companiesList)
                    if (company.location == currentCity)
                      ListTile(
                        title: Text(company.name.toString()),
                        subtitle: Text(company.location.toString()),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return SecondScreen(company: company);
                          }));
                        },
                        trailing: Icon(Icons.next_week_outlined),
                      ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
