import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: homeScreen());
  }
}

// PART 1
class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Hobbies", style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        color: Colors.grey[400],
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HobbyCard(title: "Travelling", icon: Icons.travel_explore),
            SizedBox(height: 10),
            HobbyCard(
              title: "Skating",
              icon: Icons.skateboarding,
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}

//PART 2
class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  HobbyCard({
    required this.title,
    required this.icon,
    this.color = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Icon(icon, color: Colors.white),
          ),
          Text(title, style: TextStyle(color: Colors.white, fontSize: 25)),
        ],
      ),
    );
  }
}
