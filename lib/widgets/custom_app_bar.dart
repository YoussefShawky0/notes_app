import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text(
        'دونلي',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
      centerTitle: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Icon(Icons.search, color: Colors.white, size: 35),
        ),
      ],
    );
  }
}
