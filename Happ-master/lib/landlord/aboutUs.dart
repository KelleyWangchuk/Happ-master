import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("About Happ"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Happ Background",
              style: TextStyle(fontFamily: "Montserrat", fontSize: 25),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Many people reside in rented apartments which are owned by the government or  private organizations or individuals. Between the tenants and the  landlords/agents/managers, many activities take place starting from the tenant signing  an agreement to the tenant leaving the apartment. These activities in Bhutan are  mostly carried out manually as per the survey conducted. To provide examples,  agreements are always signed in person, record-keeping methods are traditional,  requesting services and interaction with the owner is done either in person, call or  through instant messaging applications. A digital platform in Bhutan for the owners and  tenants is absent. To streamline with the technology-oriented world, an application to  digitize housing and rental services is required which will make the procedure efficient  and easy for both the owners and tenants.Internationally there are web applications and mobile applications that provide real  estate services for owners and tenants. They incorporate search, buy, and rent or sell  functions. Management systems for owners to manage tenants and record systems are  also present. In Bhutan, housing.bt is a website that provides real estate services. An  application explicitly for tenants and owners is not present.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: "Montserat", fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
