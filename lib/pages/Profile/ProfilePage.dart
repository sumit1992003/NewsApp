
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProfilePage",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.black),
        ),
        backgroundColor: Colors.grey,
      ),

    );
  }
}
