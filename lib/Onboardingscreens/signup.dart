import 'package:event_dart/Onboardingscreens/signin.dart';
import 'package:event_dart/main.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text("  Sign up", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Text("   Name", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Enter your Name",
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("   Email/Mobile Number", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
                    }
                    if (!RegExp(r'^[\w-]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Enter your Email or Mobile Number",
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("   Password", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    if (!RegExp(r'^(?=.[a-z])(?=.[A-Z])(?=.*\d)').hasMatch(value)) {
                      return 'Password must include uppercase, lowercase, and a number';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "Enter your Password",
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 400,
                  height: 55,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // if (_formKey.currentState!.validate()) {
                        //   Navigator.push(context, MaterialPageRoute(builder: (context) => OtpView()));
                        // }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text("Sign Up"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(child: Divider(thickness: 2)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("or", style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
                    ),
                    Expanded(child: Divider(thickness: 2, height: 50)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://res.cloudinary.com/dinfsflm5/image/upload/v1729579124/WhatsApp_Image_2024-10-22_at_12.06.02_b2593431_gekgyh.jpg",
                    height: 60,
                    width: 60,
                  ),
                  SizedBox(width: 50),
                  Image.network(
                    "https://res.cloudinary.com/dinfsflm5/image/upload/v1729579143/WhatsApp_Image_2024-10-22_at_12.06.53_c3e68f13_bg5p4i.jpg",
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" Have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Signin()));
                    },
                    child: Text("Sign In", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}