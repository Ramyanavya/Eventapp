
import 'package:event_dart/main.dart';

import 'package:flutter/material.dart';

import '../Onboardingscreens/signin.dart';
import 'Account.dart';


class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 150,
              width: 150,
              child: Image.network(
                "https://res.cloudinary.com/dsgjptfqj/image/upload/v1722070290/log_out_hdpgnc.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
                "Oh no! You're Leaving...\n      Are You Sure?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountPage()));
              },
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                    child: Text(
                      "Naah,Just Kidding",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyLogout()));
              },
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.lightBlueAccent,
                    ),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                    child: Text(
                      "Yes, Log Me Out",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class MyLogout extends StatefulWidget {
  const MyLogout({super.key});

  @override
  State<MyLogout> createState() => _MyLogoutState();
}

class _MyLogoutState extends State<MyLogout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Icon(
                Icons.thumb_up,
                color: Colors.pinkAccent[100],
                size: 100,
              )),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
                "You've Successfully \n      Logged out.",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Signin()));
              },
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                    child: Text(
                      "Back To Login",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}