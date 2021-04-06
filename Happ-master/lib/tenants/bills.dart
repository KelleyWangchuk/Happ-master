import 'package:flutter/material.dart';
import 'package:happ/widgets/table_bills.dart';

import '../widgets/card_bills.dart';
import '../widgets/table_bills.dart';

class Bills extends StatefulWidget {
  @override
  _BillsState createState() => _BillsState();
}

//view day view headline
class _BillsState extends State<Bills> {
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

  List billSort = ["Latest", "Rent", "Utility"];
  String billSortChosen;
  bool card = true;
  // @override
  // void initState() {
  //   setState(() {
  //     tenants = tenants;
  //   });
  // }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Row(
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
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            value: billSortChosen,
                            items: billSort.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                billSortChosen = newValue;
                              });
                            }),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: card
                      ? IconButton(
                          icon: Icon(Icons.view_day),
                          onPressed: () {
                            setState(() {
                              card = !card;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(Icons.view_list),
                          onPressed: () {
                            setState(() {
                              card = !card;
                            });
                          },
                        ),
                ),
                VerticalDivider(),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.filter_list),
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              '/filter',
                            );
                          },
                        ),
                        Text("Filter"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          tenants.length > 0
              ? (card ? CardBills(tenants: tenants) : TableBills())
              : Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
