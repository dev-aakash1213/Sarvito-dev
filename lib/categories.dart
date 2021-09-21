import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) => MaterialApp(home: CategoriesPage());
}

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: Text("OUR SERVICES")),
      drawer: MediaQuery.of(context).size.width < 500
          ? Drawer(
              child: Menu(),
            )
          : null,
      body: SafeArea(
          child: Center(
              child: MediaQuery.of(context).size.width < 500
                  ? Content()
                  : Row(children: [
                      Container(width: 200.0, child: Menu()),
                      Container(
                          width: MediaQuery.of(context).size.width - 200.0,
                          child: Content())
                    ]))));

  // ignore: non_constant_identifier_names
  Menu() {}
}

class Content extends StatelessWidget {
  final List<String> elements = [
    "RO Services",
    "Electrical Services",
    "Salon for Men",
    "Salon for Women",
    "Pest Control Services",
    "Plumber Services",
    "Home Appliances Repair",
    "AC Service Repair",
    "Cleaning and Disinfections",
    "Painting Services",
    "City Taxi Service"
  ];
  @override
  Widget build(context) => GridView.builder(
      itemCount: elements.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 180.0,
        crossAxisSpacing: 50.0,
        mainAxisSpacing: 50.0,
      ),
      // done
      itemBuilder: (context, i) => Card(
          child: Center(
              child: Padding(
                  padding: EdgeInsets.all(8.0), child: Text(elements[i])))));
}
