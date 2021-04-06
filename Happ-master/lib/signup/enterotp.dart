import 'package:flutter/material.dart';

class EnterOtp extends StatefulWidget {
  @override
  _EnterOtpState createState() => _EnterOtpState();
}

class _EnterOtpState extends State<EnterOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Happ"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'enter otp',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                child: RaisedButton(
                  child: Text("Request OTP"),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      '/verifyotp',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
