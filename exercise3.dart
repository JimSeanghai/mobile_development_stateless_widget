import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercise 3", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          ProductCard(
            title: "Dart",
            description: "the best object language",
            image: "./assets/dart.png",
          ),
          ProductCard(
            title: "Flutter",
            description: "the best mobile widget library",
            image: "./assets/flutter.png",
          ),
          ProductCard(
            title: "Firebase",
            description: "the best cloud database",
            image: "./assets/firebase.png",
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  ProductCard({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        height: 120,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image, height: 50),
              SizedBox(height: 10),
              Text(title),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
