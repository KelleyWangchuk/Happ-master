import 'package:flutter/material.dart';

class CardBills extends StatelessWidget {
  const CardBills({
    Key key,
    @required this.tenants,
  }) : super(key: key);

  final List tenants;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: tenants.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                '/bill',
              );
            },
            child: Card(
              color: ((index % 2) == 0) ? Colors.blue[50] : Colors.red[50],
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Bill id: 126721",
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Date: 13/07/2020",
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 15,
                              //fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      //color: Colors.red,
                      width: 500,
                      child: Text(
                        "Issued to: ${tenants[index]}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "House no: x",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Flat no: y",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20),
                        alignment: Alignment.centerLeft,
                        child: Text("Amount: Nu. 15000")),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Remarks: Paid in Cash by tenant",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
