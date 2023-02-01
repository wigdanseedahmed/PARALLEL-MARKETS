///----------------------------- 🌎 PROJECT IMPORTS -----------------------------///
import 'package:parallel_markets/imports.dart';

// import 'package:flutter_medical/routes/signUp.dart';
// import 'package:flutter_medical/routes/signIn.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginScreenWS(); //TODO:SignInPage
    } else {
      return const RegistrationScreenWS(); //TODO:SignUpPage
    }
  }
}
