import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/services.dart';

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
  bool rent = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Issue Bill"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: rent
              ? Colors.blue[50].withOpacity(0.5)
              : Colors.red[50].withOpacity(0.5),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        "Utility",
                        style: rent
                            ? TextStyle(fontSize: 14)
                            : TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: rent ? Colors.blue[100] : Colors.red[100],
                        ),
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                              top: 3,
                              left: rent ? 60 : 0,
                              right: rent ? 0 : 60,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    rent = !rent;
                                  });
                                },
                                child: AnimatedSwitcher(
                                  duration: Duration(milliseconds: 1000),
                                  transitionBuilder: (Widget child,
                                      Animation<double> animation) {
                                    return ScaleTransition(
                                      scale: animation,
                                      child: child,
                                    );
                                  },
                                  child: rent
                                      ? Icon(
                                          Icons.check_circle,
                                          color: Colors.blue,
                                          size: 35,
                                          key: UniqueKey(),
                                        )
                                      : Icon(Icons.remove_circle_outline,
                                          color: Colors.red,
                                          size: 35,
                                          key: UniqueKey()),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        "Rent",
                        style: rent
                            ? TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)
                            : TextStyle(
                                fontSize: 14,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: DropDownField(
                  hintText: "Search Tenant",
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
                    labelText: "Amount in Nu. ",
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
                      labelText: "Remarks",
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
                child: RaisedButton(
                  child: Text(
                    "Issue Bill",
                    style: TextStyle(fontSize: 17),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
