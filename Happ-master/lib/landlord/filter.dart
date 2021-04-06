import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool rent = true;
  DateTime startDate;
  DateTime endDate;

  @override
  void initState() {
    super.initState();
    startDate = DateTime.now();
    endDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(10),
                //     topRight: Radius.circular(10),
                //     bottomLeft: Radius.circular(10),
                //     bottomRight: Radius.circular(10)),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.white.withOpacity(1),
                //     spreadRadius: 5,
                //     blurRadius: 7,
                //     offset: Offset(0, 3), // changes position of shadow
                //   ),
                // ],
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: FlatButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Text("Clear"),
                      textColor: Colors.black,
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Text("Filter"),
                      textColor: Colors.black,
                    ),
                  ),
                  Container(
                    child: FlatButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Text("Done"),
                      textColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Text(
                "Category",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Row(
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
                              duration: Duration(milliseconds: 300),
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
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Text(
                "Start Date",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                color: Colors.white,
                child: ListTile(
                  title: Text(
                      "${startDate.day}, ${startDate.month}, ${startDate.year}"),
                  trailing: Icon(Icons.keyboard_arrow_down),
                  onTap: _startDate,
                )),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Text(
                "EndDate",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                color: Colors.white,
                child: ListTile(
                  title:
                      Text("${endDate.day}, ${endDate.month}, ${endDate.year}"),
                  trailing: Icon(Icons.keyboard_arrow_down),
                  onTap: _endDate,
                ))
          ],
        ),
      ),
    );
  }

  _startDate() async {
    DateTime date = await showDatePicker(
        context: context,
        initialDate: startDate,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));

    if (date != null)
      setState(() {
        startDate = date;
      });
  }

  _endDate() async {
    DateTime date = await showDatePicker(
        context: context,
        initialDate: endDate,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));

    if (date != null)
      setState(() {
        endDate = date;
      });
  }
}
