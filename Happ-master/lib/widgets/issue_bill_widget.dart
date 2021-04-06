import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';

class IssueBill extends StatefulWidget {
  @override
  _IssueBillState createState() => _IssueBillState();
}

class _IssueBillState extends State<IssueBill> {
  List<String> tenants = [
    "Pema",
    "Zangmo",
    "Lhamo",
    "Dema",
    "Karsang",
    "Namgay",
    "Dema",
    "Karsang",
    "Namgay"
  ];
  final selectedTenant = TextEditingController();
  var selectTenant = "";
  bool utility = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: DropDownField(
              hintText: "Issue to",
              controller: selectedTenant,
              enabled: true,
              items: tenants,
              onValueChanged: (value) {
                setState(() {
                  selectTenant = value;
                });
              },
            ),
          ),
          // CustomSwitch(
          //   value: utility,
          //   activeColor: Colors.blue,
          //   onChanged: (value) {
          //     setState(() {
          //       utility = value;
          //     });
          //   },
          // ),
        ],
      ),
    );
  }
}
