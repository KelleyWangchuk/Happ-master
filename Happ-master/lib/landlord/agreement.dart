import 'dart:ui';

import 'package:flutter/material.dart';

class Agreement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MediaQueryData deviceInfo = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Agreement"),
      ),
      body: Container(
        // color: Colors.green[50],
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green[200], width: 2),
            // color: Colors.green[50],
          ),
          padding: const EdgeInsets.all(15.0),
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              //crossAxisAlignment: CrossAxisAlignment.,

              children: [
                Text(
                  "This agreement dated 15/12/2020 was signed between: ",
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    decoration: TextDecoration.underline,

                    // color: Colors.grey[900],
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Landlord",
                              style: TextStyle(
                                fontFamily: 'RobotoMono',
                                // color: Colors.grey[900],
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Karma Tempa",
                              style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: 20,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Tenant",
                              style: TextStyle(
                                color: Colors.grey[1000],
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Pema Zangmo",
                              style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: 20,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "11502003160",
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "11302903160",
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 20,
                        ),
                      ),
                    ]),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "to rent the apartment a_102 for a starting monthly rent of Nu. 1000. A security deposit of Nu. 12000 was deposited on Feb 2, 2021. The tenant will reside in the apartment for 1 year and 3 months starting 2/2021 and provide a notice 1 month early before leaving. Same applies to the landlord, 1 month early notice before eviction.  The rent of the house will increase 20% every 2 years. All rules and regulation of the city applies.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Agreed by lanlord on 7/1/2021",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Agreed by tenant on 13/1/2021",
                  style: TextStyle(fontSize: 20),
                ),
              ]),
        ),
      ),
    );
  }
}
