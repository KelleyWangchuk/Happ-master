import 'package:flutter/material.dart';

// imported for flutter login
import 'dart:convert';
//import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isLoading = false;

  signIn(String email, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'email': email, 'password': pass};
    var jsonResponse;
    var response = await http
        .post("http://127.0.0.1:8000/accounts/api/register/", body: data);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        //sharedPreferences.setString("token", jsonResponse['token']);
        // Navigator.of(context).pushAndRemoveUntil(
        //     MaterialPageRoute(builder: (BuildContext context) => MainPage()),
        //     (Route<dynamic> route) => false);
        Navigator.of(context).pushNamed(
          '/login',
        );
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);
    }
  }

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController cpasswordController = new TextEditingController();

  final TextEditingController firstnameController = new TextEditingController();
  final TextEditingController lastnameController = new TextEditingController();
  final TextEditingController phoneController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Happ"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'e-mail',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText: 'phone number',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: TextFormField(
                    controller: firstnameController,
                    decoration: InputDecoration(
                      labelText: 'first name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: TextFormField(
                    controller: lastnameController,
                    decoration: InputDecoration(
                      labelText: 'last name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'passsword',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: TextFormField(
                    controller: cpasswordController,
                    decoration: InputDecoration(
                      labelText: 'confirm password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                    child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.blue,
                  elevation: 7.0,
                  child: Text("Sign Up"),
                  onPressed: emailController.text == "" ||
                          passwordController.text == ""
                      ? null
                      : (passwordController.text != cpasswordController.text
                          ? null
                          : () {
                              setState(() {
                                _isLoading = true;
                              });
                              signIn(emailController.text,
                                  passwordController.text);
                              // Navigator.of(context).pushNamed(
                              //   '/requestotp',
                              // );
                            }),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
