import 'package:flutter/material.dart';

class AddTenant extends StatefulWidget {
  @override
  _AddTenantState createState() => _AddTenantState();
}

class _AddTenantState extends State<AddTenant> {
  final fieldText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: fieldText,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Search to add new",
            // icon: Icon(
            //   Icons.search,
            //   color: Colors.white,
            // ),
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              fieldText.clear();
            },
            iconSize: 30,
          ),
        ],
      ),
      body: Container(),
    );
  }
}
