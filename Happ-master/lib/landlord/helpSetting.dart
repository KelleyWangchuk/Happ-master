import 'package:flutter/material.dart';

class HelpSetting extends StatefulWidget {
  @override
  _HelpSettingState createState() => _HelpSettingState();
}

class _HelpSettingState extends State<HelpSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Help"),
      ),
      body: Column(
        children: [
          FlatButton(
            padding: EdgeInsets.all(20),
            //hoverColor: Colors.red,
            onPressed: () {},
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.help_outline_rounded, size: 25),
                SizedBox(width: 15),
                Text("Help Center", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          FlatButton(
            padding: EdgeInsets.all(20),
            //hoverColor: Colors.red,
            onPressed: () {},
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.contact_page_rounded, size: 25),
                SizedBox(width: 15),
                Text("Contact Us", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          FlatButton(
            padding: EdgeInsets.all(20),
            //hoverColor: Colors.red,
            onPressed: () {},
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.description_rounded, size: 25),
                SizedBox(width: 15),
                Text("Terms and Privacy Policy",
                    style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          FlatButton(
            padding: EdgeInsets.all(20),
            //hoverColor: Colors.red,
            onPressed: () {},
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.info_outline_rounded, size: 25),
                SizedBox(width: 15),
                Text("Apps Info", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
