import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the column vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Center the column horizontally
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your image path
              ),
              SizedBox(height: 16.0),
              Text(
                'Siddesh Patil',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add onPressed functionality for the FloatingActionButton
          // e.g., log out or perform another action
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Logging out...'),
            ),
          );
        },
        child: Icon(Icons.exit_to_app),
      ),
    );
  }
}
