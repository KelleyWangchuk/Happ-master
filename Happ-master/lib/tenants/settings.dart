import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          FlatButton(
            padding: EdgeInsets.all(20),
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/agreement',
              );
            },
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.note, size: 20),
                SizedBox(width: 15),
                Text("Agreement", style: TextStyle(fontSize: 16)),
              ],
            ),
            // color: Colors.grey[300],
            //hoverColor: Colors.red,
          ),
          FlatButton(
            padding: EdgeInsets.all(20),
            //hoverColor: Colors.red,
            onPressed: () {},
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.archive, size: 20),
                SizedBox(width: 15),
                Text("Archive", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          FlatButton(
            padding: EdgeInsets.all(20),
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/feedbackSetting',
              );
            },
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.feedback, size: 20),
                SizedBox(width: 15),
                Text("Feedback", style: TextStyle(fontSize: 16)),
              ],
            ),
            // color: Colors.grey[300],
            //hoverColor: Colors.red,
          ),
          FlatButton(
            padding: EdgeInsets.all(20),
            //hoverColor: Colors.red,
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/helpSetting',
              );
            },
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.help, size: 20),
                SizedBox(width: 15),
                Text("Help", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          FlatButton(
            padding: EdgeInsets.all(20),
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/aboutUs',
              );
            },
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.info_outline, size: 20),
                SizedBox(width: 15),
                Text("About Us", style: TextStyle(fontSize: 16)),
              ],
            ),
            // color: Colors.grey[300],
            //hoverColor: Colors.red,
          ),
          FlatButton(
            padding: EdgeInsets.all(20),
            //hoverColor: Colors.red,
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/changePassword',
              );
            },
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock, size: 20),
                SizedBox(width: 15),
                Text("Change Password", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
