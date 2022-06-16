import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 22),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 42,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/200/300'),
                ),
                Column(
                  children: [
                    Text('Name'),
                    Text('Description'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
