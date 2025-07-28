import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.network(
              'https://tse1.mm.bing.net/th/id/OIP.1dqVYFZJxbj6P3eDy9rPDQHaJS?rs=1&pid=ImgDetMain&o=7&rm=3',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 40,
            left: 100,
            right: 100,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => LoginScreen()),
                );
              },
              child: Text("Let's Start"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
