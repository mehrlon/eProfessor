import 'package:eprofessor/utils/authentication.dart';
import 'package:flutter/material.dart';

import 'google_sign_in_button.dart';

class AuthDialog extends StatefulWidget {
  @override
  _AuthDialogState createState() => _AuthDialogState();
}

class _AuthDialogState extends State<AuthDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      // ...
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Email address'),
                TextField(hintText: "Email"),
                Text('Password'),
                TextField(hintText: "Password"),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: double.maxFinite,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Log in',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: double.maxFinite,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign up',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(child: GoogleButton()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
