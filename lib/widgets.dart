import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePageTile extends StatelessWidget {
  IconData leading;
  String title;
  Color iconColor;

  ProfilePageTile(
      {required this.leading, required this.title, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 2,
          child: ListTile(
            leading: Icon(
              leading,
              color: iconColor,
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: iconColor),
          ),
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
