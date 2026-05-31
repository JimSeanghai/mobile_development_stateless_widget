
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
        title: Text("Exercise 2", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          CustomButton(lable: "Primary Button", icon: Icons.add),
          CustomButton(
            lable: "Secondary Button",
            icon: Icons.save,
            type: ButtonType.secondary,
            position: IconPosition.right,
          ),
          CustomButton(
            lable: "Disable Bottun",
            icon: Icons.block,
            type: ButtonType.disabled,
          ),
        ],
      ),
    );
  }
}


enum ButtonType { primary, secondary, disabled }
enum IconPosition { left, right }

class CustomButton extends StatelessWidget {
  final String lable;
  final IconData icon;
  final ButtonType type;
  final IconPosition position;

  CustomButton({
    required this.lable,
    required this.icon,
    this.type = ButtonType.primary,
    this.position = IconPosition.left,
  });
  Color getColor() {
    if (type == ButtonType.primary) {
      return Colors.blue;
    } else if (type == ButtonType.secondary) {
      return Colors.green;
    } else {
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> item = [
      Icon(icon, color: Colors.white),
      SizedBox(width: 5),
      Text(lable, style: TextStyle(color: Colors.white)),
    ];

    if (position == IconPosition.right) {
      item = item.reversed.toList();
    }
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: getColor(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: item),
    );
  }
}
