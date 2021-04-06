import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:happ/ui/base_widget.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController phoneNumber;
  String pnum;
  // final formKey = GlobalKey<FormState>();
  void _logIn() {
    //formKey.currentState.save();
    if (pnum == "landlord") {
      Navigator.of(context).pushNamed(
        '/landlordlogin',
      );
    } else {
      Navigator.of(context).pushNamed(
        '/tenantlogin',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Happ"),
        ),
        body: SafeArea(
          child: LayoutBuilder(builder: (context, constraints) {
            return Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                child: Form(
                  autovalidate: true,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                          child: TextFormField(
                            //controller: phoneNumber,

                            onChanged: (input) {
                              setState(() {
                                pnum = input;
                              });
                            },
                            //keyboardType: ,
                            decoration: InputDecoration(
                              labelText: 'phone number',
                              border: OutlineInputBorder(),
                            ),
                            validator: MultiValidator([
                              RequiredValidator(errorText: "Required"),
                              // EmailValidator(errorText: "Must be in email format"),
                            ]),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          width: double.infinity,
                          child: Text(
                            "Forgot Password?",
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                          child: SizedBox(
                            height: 50,
                            width: 200,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              color: Colors.blue,
                              elevation: 7.0,
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: _logIn,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              '/signup',
                            );
                          },
                          child: Text(
                            "Sign Up?",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      );
    });
  }
}
