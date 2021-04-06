import 'package:flutter/material.dart';

class FeedbackSetting extends StatefulWidget {
  @override
  _FeedbackSettingState createState() => _FeedbackSettingState();
}

class _FeedbackSettingState extends State<FeedbackSetting> {
  // var _name;
  // var _phoneNo;
  // var _email;
  // var _feedback;
  final nameCon = new TextEditingController();
  final phoneCon = new TextEditingController();
  final emailCon = new TextEditingController();
  final feedbackCon = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("FeedBack"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameCon,
              decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  labelText: "Name",
                  labelStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.black12,
                  ),
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: phoneCon,
              decoration: InputDecoration(
                  hintText: "Enter Mobile Number",
                  labelText: "Mobile Number",
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black12),
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: emailCon,
              decoration: InputDecoration(
                  hintText: "Enter Email ID",
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black12),
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
                controller: feedbackCon,
                decoration: InputDecoration(
                    hintText: "Enter FeedBack/Complaint",
                    labelText: "FeedBack",
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black12),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true),
                maxLines: 5,
                maxLength: 200,
                maxLengthEnforced: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                  child: SizedBox(
                    height: 50,
                    width: 150,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.blue,
                      elevation: 7.0,
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      onPressed: () {
                        submitFeed(context);
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                  child: SizedBox(
                    height: 50,
                    width: 150,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.blue,
                      elevation: 7.0,
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            // Text(
            //     "$_name!, your feeback is submitted successfully. Thank you!!!"),
          ],
        ),
      ),
    );
  }

  void submitFeed(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Feedback submit successfully"),
      content: Text(" Thank You!"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
