import 'package:device_preview/device_preview.dart';

import 'package:event_dart/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'logout.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApps()));
}

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 1,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        centerTitle: true,
        title: Text(
          "Account",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          // Divider(height: 10, thickness: 2),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 30),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: ClipOval(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT2DD9NEJ4mI6h5iJJUGkiRZ85nNJ3R8xuKw&s',fit: BoxFit.cover,)),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "B.Navya",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "navyabhavya@gmail.com",
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Member since 21 March 2024",
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          //Divider(height: 3,thickness: 2,),
          // Add ListTiles here
          ListTile(
            leading: Icon(Icons.label_outlined),
            title: Text("My Bookings"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookings_page()));
            },

          ),
          Divider(height: 3,thickness: 1),
          ListTile(
            leading: Icon(Icons.error_outline),
            title: Text("Information"),

            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>information()));
            },
          ),
          Divider(height: 3,thickness: 1,),
          ListTile(
            leading: Icon(Icons.file_copy_outlined),
            title: Text("Write a review"),

            onTap: () {
              // Action when tapped
            },
          ),
          Divider(height: 3,thickness: 1,),
          ListTile(
            leading: Icon(Icons.headset_mic_outlined),
            title: Text("Contact Support"),

            onTap: () {
              // Action when tapped
            },
          ),
          Divider(height: 3,thickness: 1,),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log Out"),

            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Logout()));
            },
          ),
          Divider(height: 3,thickness: 1,)
        ],
      ),
    );
  }
}

class Bookings_page extends StatelessWidget {
  const Bookings_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 1,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountPage()));
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
          centerTitle: true,
          title: Text(
            "My Bookings",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.calendar_month_outlined,color: Colors.black,size: 80,),
              SizedBox(height: 30,),
              Text("No Bookings Yet",style: TextStyle(fontSize: 15,color: Colors.grey),)
            ],
          ),
        )
    );
  }
}
class information extends StatelessWidget {
  const information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(elevation: 1,
      leading: IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountPage()));
        },
        icon: Icon(Icons.arrow_back_ios, color: Colors.black),
      ),
      centerTitle: true,
      title: Text(
        "About Us",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text("Welcome to Event hub We’re thrilled to have you join us for an unforgettable experience"
                  "packed with inspiring speakers, interactive sessions, and unparalleled networking opportunities"
                  "The event will take place on Date at Location, bringing together thought leaders, industry experts, and passionate attendees to explore [Event Theme or Purpose]. Use this app as your guide to all things "
                  "you’ll be able to view session times, speakers, and locations to create your personalized itinerary.",
                style: TextStyle(fontSize: 15,color: Colors.grey),),
              SizedBox(height: 30,),
              Text("Meet the Speakers",style: TextStyle(fontSize: 20,color: Colors.black),),
              SizedBox(height: 10,),
              Text("Get to know our line-up of renowned speakers and guests. "
                  "Check out their profiles, learn about their topics, and connect with them on social media. Prepare your questions in advance and engage with them during Q&A segments.",
                style: TextStyle(fontSize: 15,color: Colors.grey
                ),
              ),
              SizedBox(height: 20,),
              Text("Venue and Navigation",style: TextStyle(fontSize: 20,color: Colors.black),),
              SizedBox(height: 10,),
              Text("Our interactive venue map will help you find your way around with ease. Locate sessions, networking lounges, food courts, and more. "
                  "We’ve also included information on nearby amenities like restaurants and "
                  "hotels to make your visit convenient and enjoyable",
                style: TextStyle(fontSize: 15,color: Colors.grey
                ),
              ),
              SizedBox(height: 20,),
              Text("Stay Informed",style: TextStyle(fontSize: 20,color: Colors.black),),
              SizedBox(height: 10,),
              Text("Stay tuned to the latest updates and announcements through real-time notifications. Receive alerts on schedule changes, session reminders, "
                  "and important event announcements, so you’ll always be in the know.",
                style: TextStyle(fontSize: 15,color: Colors.grey
                ),
              ),
              SizedBox(height: 20,),
              Text("Event Highlights",style: TextStyle(fontSize: 20,color: Colors.black),),
              SizedBox(height: 10,),
              Text("Capture and share memorable moments in the photo and video gallery. Our gallery showcases event "
                  "highlights and gives attendees a chance to upload and tag their own event experiences",
                style: TextStyle(fontSize: 15,color: Colors.grey
                ),
              ),
              SizedBox(height: 20,),
              Text("Sponsors and Exhibitors",style: TextStyle(fontSize: 20,color: Colors.black),),
              SizedBox(height: 10,),
              Text("We’re grateful for the support of our sponsors and exhibitors who help make this event possible."
                  " Explore their profiles, special offers, and exhibitor booths to learn more about their work and offerings",
                style: TextStyle(fontSize: 15,color: Colors.grey
                ),
              ),
              SizedBox(height: 20,),
              Text("Support and Assistance",style: TextStyle(fontSize: 20,color: Colors.black),),
              SizedBox(height: 10,),
              Text("We’re here to help make your experience seamless! Check out our FAQ section for common questions, "
                  "or use the contact information provided to reach out for support."
                  " Whether you’re looking for quick answers or in need of assistance, our team is here for you.",
                style: TextStyle(fontSize: 15,color: Colors.grey
                ),
              ),
              SizedBox(height: 50,),
              Center(
                child: SizedBox(
                  width: 400, // Set the width
                  height: 55, // Set the height
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,

                        padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        textStyle:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10,),

                        ),
                      ),
                      child: Text(" Start Plan Your Event"),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}