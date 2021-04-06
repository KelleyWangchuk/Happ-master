import 'package:flutter/material.dart';

import 'home.dart';
import 'bills.dart';
import 'settings.dart';
import 'notifications.dart';

class TenantNav extends StatefulWidget {
  @override
  _TenantNavState createState() => _TenantNavState();
}

class _TenantNavState extends State<TenantNav> {
  billAlert(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Issue bill"),
            content: Container(),
            actions: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                elevation: 5,
                child: Text("Submit"),
              ),
            ],
          );
        });
  }

  int _selectedIndex = 0;
  bool isSearching = false;

  List<Widget> _landlordWidgets = <Widget>[
    Home(),
    Bills(),
    Text("Search"),
    Notifications(),
    Settings(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _filterTenants(name) {
    setState(() {
      // filteredTenants = tenants
      //     .where((tenant) => tenant.toLowercase.contains(name.toLowerCase()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: !isSearching
            ? Text("Happ")
            : TextField(
                onChanged: (name) {
                  _filterTenants(name);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Search tenant",
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
        actions: isSearching
            ? [
                IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      this.isSearching = !this.isSearching;
                      //filteredTenants = tenants;
                    });
                  },
                  iconSize: 30,
                ),
              ]
            : _selectedIndex == 2
                ? [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        setState(() {
                          this.isSearching = !this.isSearching;
                        });
                      },
                      iconSize: 30,
                    ),
                    IconButton(
                      icon: Icon(Icons.logout),
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          '/logout',
                        );
                      },
                      iconSize: 30,
                    ),
                  ]
                : [
                    IconButton(
                      icon: Icon(Icons.logout),
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          '/logout',
                        );
                      },
                      iconSize: 30,
                    ),
                  ],
        leading: isSearching
            ? null
            : IconButton(
                icon: Icon(Icons.account_circle_sharp),
                iconSize: 35,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/profile',
                  );
                },
              ),
      ),
      body: Center(
        child: _landlordWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff2e75c7),
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text("Tenants"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart),
            title: Text("Bills"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_on),
            title: Text("Notification"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      floatingActionButton: _selectedIndex == 3
          ? FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              child: Icon(Icons.notifications_active),
              backgroundColor: Color(0xff415c7a),
            )
          : null,
    );
  }
}
