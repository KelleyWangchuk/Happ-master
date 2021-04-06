import 'package:flutter/material.dart';

class Tenants extends StatefulWidget {
  @override
  _TenantsState createState() => _TenantsState();
}

class _TenantsState extends State<Tenants> {
  List tenants = [
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
  List filteredTenants = [
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

  List tenantSort = ["A-Z", "Latest", "Oldest"];
  String tenantSortChosen;

  // @override
  // void initState() {
  //   setState(() {
  //     filteredTenants = tenants;
  //   });
  // }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(2, 10, 2, 0),
            child: Text(
              "You have ${tenants.length} active tenants",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(18, 0, 12, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sort: ",
                      style: TextStyle(fontSize: 15),
                    ),
                    Container(
                      // decoration: BoxDecoration(
                      //   border: Border.all(color: Colors.grey),
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      child: DropdownButton(
                          hint: Text(
                            "Latest",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          value: tenantSortChosen,
                          items: tenantSort.map((value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              tenantSortChosen = newValue;
                            });
                          }),
                    )
                  ],
                ),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        '/filter',
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: filteredTenants.length > 0
                ? ListView.builder(
                    itemCount: filteredTenants.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) => Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "${filteredTenants[index]}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "House no: x",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          "Flat no: y",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Phone number",
                                      style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: Icon(Icons.paste_outlined),
                                      color: Color(0xff3993fa),
                                      iconSize: 30,
                                      onPressed: () {},
                                    ),
                                  ),
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: new BoxDecoration(
                                    color: Color(0xffe3ebf8),
                                    shape: BoxShape.circle,
                                    //   border: Border.all(
                                    //       color: Color(0xff3993fa), width: 1),
                                    // ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Center(
                                    child: IconButton(
                                      icon: Icon(Icons.notifications_active),
                                      color: Color(0xff3993fa),
                                      iconSize: 30,
                                      onPressed: () {},
                                    ),
                                  ),
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: new BoxDecoration(
                                    color: Color(0xffe3ebf8),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          )
        ],
      ),
    );
  }
}

