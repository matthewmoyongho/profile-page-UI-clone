import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_page_ui_clone/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          //scaffoldBackgroundColor: Color(0xff102A67),
          accentColor: Color(0xff102A67),
        ),
        home: UserProfile());
  }
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xff102A67),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'My Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(width: 1, color: Colors.black26)),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/profile.jpg'),
                        radius: 30,
                      ),
                      title: Text(
                        'Mark Johnson',
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text(
                        'mcjohn@gmail.com\nUniversity of Nigeria, Nsukka',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "General",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ProfilePageTile(
                    leading: FontAwesomeIcons.user,
                    iconColor: Color(0xff102A67),
                    title: 'Edit Profile',
                  ),
                  ProfilePageTile(
                    leading: Icons.badge,
                    iconColor: Color(0xff102A67),
                    title: 'Badges',
                  ),
                  ProfilePageTile(
                    leading: Icons.add_circle_outline,
                    iconColor: Color(0xff102A67),
                    title: 'Study Goals',
                  ),
                  ProfilePageTile(
                    leading: Icons.notifications_off,
                    iconColor: Color(0xff102A67),
                    title: 'Focus Mode',
                  ),
                  ProfilePageTile(
                    leading: Icons.schedule,
                    iconColor: Color(0xff102A67),
                    title: 'School Schedule',
                  ),
                  ProfilePageTile(
                    leading: FontAwesomeIcons.userFriends,
                    iconColor: Color(0xff102A67),
                    title: 'Invite Friends',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
