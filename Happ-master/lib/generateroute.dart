import 'package:flutter/material.dart';
import 'package:happ/landlord/agreement.dart';

import 'package:happ/login.dart';
import 'package:happ/signup/signup.dart';
import 'package:happ/landlord/bill.dart';
import 'signup/enterotp.dart';
import 'signup/verifyotp.dart';
import 'landlord/nav.dart';
import 'tenants/nav.dart';
import 'landlord/bill.dart';
import 'landlord/issue_bill.dart';
import 'landlord/add_tenant.dart';
import 'landlord/notify.dart';
import 'change_password.dart';
import 'landlord/filter.dart';
import 'profile.dart';
import 'landlord/profileHouseDetails.dart';
import 'landlord/feedbackSetting.dart';
import 'landlord/helpSetting.dart';
import 'landlord/aboutUs.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    //final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LogIn());
      case '/signup':
        return MaterialPageRoute(
          builder: (_) => SignUp(),
        );
        return _errorRoute();
      case '/requestotp':
        return MaterialPageRoute(
          builder: (_) => EnterOtp(),
        );
      case '/profileHouseDetails':
        return MaterialPageRoute(
          builder: (_) => ProfileHouseDetails(),
        );
      case '/profile':
        return MaterialPageRoute(
          builder: (_) => ProfilePage(),
        );
      case '/verifyotp':
        return MaterialPageRoute(
          builder: (_) => VerifyOtp(),
        );
      case '/landlordlogin':
        return MaterialPageRoute(
          builder: (_) => LandlordNav(),
        );
      case '/landlordlogin':
        return MaterialPageRoute(
          builder: (_) => LandlordNav(),
        );
      case '/tenantlogin':
        return MaterialPageRoute(
          builder: (_) => TenantNav(),
        );
      case '/logout':
        return MaterialPageRoute(
          builder: (_) => LogIn(),
        );
      case '/bill':
        return MaterialPageRoute(
          builder: (_) => Bill(),
        );
      case '/issueBill':
        return MaterialPageRoute(
          builder: (_) => IssueBill(),
        );
      case '/addTenant':
        return MaterialPageRoute(
          builder: (_) => AddTenant(),
        );
      case '/notifyL':
        return MaterialPageRoute(
          builder: (_) => Notify(),
        );
      case '/changePassword':
        return MaterialPageRoute(
          builder: (_) => ChangePassword(),
        );
      case '/agreement':
        return MaterialPageRoute(
          builder: (_) => Agreement(),
        );
      case '/feedbackSetting':
        return MaterialPageRoute(
          builder: (_) => FeedbackSetting(),
        );
      case '/helpSetting':
        return MaterialPageRoute(
          builder: (_) => HelpSetting(),
        );
      case '/aboutUs':
        return MaterialPageRoute(
          builder: (_) => AboutUs(),
        );
      case '/filter':
        return MaterialPageRoute(
          builder: (_) => Filter(),
        );
      default:
        // If there is no such named route in the switch statement,
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
