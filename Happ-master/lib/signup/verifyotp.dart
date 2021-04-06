import 'package:flutter/material.dart';

class VerifyOtp extends StatefulWidget {
  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
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
                child: Row(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'verify otp',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          //labelText: 'e-mail/ phone number',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          //labelText: 'e-mail/ phone number',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          //labelText: 'e-mail/ phone number',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
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
                      '/requestOtp',
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
