import 'package:flutter/material.dart';

import '../widgets/slidable_widget.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  var notifications = 5;

  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          child: Text(
            "Notifications",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 17,
            ),
          ),
        ),
        notifications > 0
            ? Expanded(
                child: ListView.builder(
                  itemCount: notifications,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) => Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: SlidableWidget(
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(children: <Widget>[
                                Text(
                                  "Karma Tempa sent you a Checkout Notice",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ]),
                              Row(children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "1 d",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Expanded(
                                    flex: 8,
                                    child: Text(
                                      "I want to move out by July",
                                      style: TextStyle(fontSize: 15),
                                    )),
                              ]),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Center(child: CircularProgressIndicator()),
      ],
    ));
  }
}
