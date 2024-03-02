import 'package:flutter/material.dart';
import 'profile_page.dart'; // Import the profile_page.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      body: Center(
        child: Text('Welcome to Flutter App!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add onPressed functionality for the FloatingActionButton
          // e.g., navigate to the profile page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage()),
          );
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        // Add onPressed functionality for BottomNavigationBar items
        onTap: (index) {
          // Handle navigation or screen switching based on the index
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Tapped on Bottom Nav Item $index'),
            ),
          );
        },
      ),
    );
  }
}
