import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/services.dart';

class Notify extends StatefulWidget {
  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  List<String> tenants = [
    "All",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notify "),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: DropDownField(
                  hintText: "Send to",
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
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "will change this to a diff widget",
                    enabledBorder: OutlineInputBorder(
                      //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),

                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ], // Only numbers can be entered
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: TextField(
                    decoration: InputDecoration(
                      labelText: "Message",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    maxLines: 4,
                    maxLength: 200,
                    maxLengthEnforced: true
                    //keyboardType: TextInputType.multiline,
                    ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                child: SizedBox(
                  height: 60,
                  width: 250,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.blue,
                    elevation: 7.0,
                    child: Text(
                      "Send notification",
                      style: TextStyle(fontSize: 17),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
