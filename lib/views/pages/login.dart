import 'package:flutter/material.dart';
import 'package:sport_horizon_flutter/utils/global.dart';
import 'package:sport_horizon_flutter/views/pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late var _ctx;

  @override
  Widget build(BuildContext context) {
    _ctx = context;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 35, bottom: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(child: Image(image: AssetImage("assets/logo.png"))),
              Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5, top: 15),
                        child: const Text('Username'),
                      ),
                      TextFormField(
                        validator: (value) => validateUsername(value),
                        decoration: InputDecoration(
                            hintText: 'Username...',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5, top: 10),
                        child: const Text('Password'),
                      ),
                      TextFormField(
                        validator: (value) => validatePassword(value),
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Password...',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                            child: const Text('Login'), onPressed: onLogin),
                      )
                    ]),
              )
            ],
          ),
        ));
  }

  dynamic validateUsername(var value) {
    if (value == null || value.isEmpty) {
      return 'Username must not be empty';
    }
    loggedUsername = value;
    return null;
  }

  dynamic validatePassword(var value) {
    if (value == null || value.isEmpty) {
      return 'Password must not be empty';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    } else if (!containUppercase(value)) {
      return 'Password must contain at least one Uppercase letter';
    }
    return null;
  }

  bool containUppercase(value) {
    bool containUppercase = false;
    for (var i = 0; i < value.length; i++) {
      if (value[i] == value[i].toUpperCase()) {
        containUppercase = true;
        break;
      }
    }

    return containUppercase;
  }

  void onLogin() {
    if (_formKey.currentState!.validate()) {
      Navigator.pop(_ctx);
      Navigator.push(
          _ctx, MaterialPageRoute(builder: (_ctx) => HomePage(() => {})));
    }
  }
}
