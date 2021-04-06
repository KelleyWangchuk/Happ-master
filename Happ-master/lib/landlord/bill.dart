import 'package:flutter/material.dart';

class Bill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    print("size: ${deviceInfo.size}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Bill"),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green[200], width: 2),
            color: Colors.green[50],
            boxShadow: [
              //background color of box
              BoxShadow(
                color: Colors.grey[300],
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 5.0, //extend the shadow
                offset: Offset(
                  5.0, // Move to right 10  horizontally
                  5.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          padding: const EdgeInsets.all(15.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bill id",
                            style: TextStyle(
                              fontFamily: 'RobotoMono',
                              color: Colors.grey[900],
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            "12212",
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
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
                            "Date",
                            style: TextStyle(
                              color: Colors.grey[1000],
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            "13-7-2020",
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                //color: Colors.red,
                width: 500,
                child: Text(
                  "Issued to:",
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Colors.black,
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                //color: Colors.red,
                width: 500,
                child: Text(
                  "Kuenzang Choden",
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "House no: 1",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Flat no: 5",
                      style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Amount: Nu. 15000",
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      color: Colors.grey,
                      fontSize: 25,
                    ),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Remarks: ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Paid in Cash by tenant",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
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
