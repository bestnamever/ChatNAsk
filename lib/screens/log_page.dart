import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/screens/login_screen.dart';
import 'package:flutter_chat_ui_starter/screens/registration_screen.dart';
import 'package:flutter_chat_ui_starter/widgets/custom_button.dart';

class LogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "Chat ",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "& ",
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "Ask",
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[300],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Custombutton(
            text: "Log In",
            callback: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LoginScreen(),
                ),
              );
            },
          ),
          Custombutton(
            text: "Register",
            callback: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => Registration(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
