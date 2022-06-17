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
                const CircleAvatar(
                  radius: 42,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                const SizedBox(width: 51),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Jack',
                      style: TextStyle(
                          fontSize: 31,
                          fontFamily: 'assets/fonts/Roboto-Regular.ttf'),
                    ),
                    Text(
                      'Flutter App Developer',
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 29),
            Padding(
              padding: const EdgeInsets.only(left: 31),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.school_outlined, size: 41),
                      SizedBox(width: 26),
                      Text('School Name', style: TextStyle(fontSize: 26)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Icon(Icons.computer_outlined, size: 41),
                      SizedBox(width: 26),
                      Text('School Name', style: TextStyle(fontSize: 26)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Icon(Icons.location_on_outlined, size: 41),
                      SizedBox(width: 26),
                      Text('School Name', style: TextStyle(fontSize: 26)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Icon(Icons.email_outlined, size: 41),
                      SizedBox(width: 26),
                      Text('School Name', style: TextStyle(fontSize: 26)),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.phone_android_outlined, size: 41),
                      SizedBox(width: 26),
                      Text('School Name', style: TextStyle(fontSize: 26)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 51),
            const Padding(
              padding: EdgeInsets.all(19.0),
              child: Text(
                'Hello my name is Jack and this is my portfolio app.',
                style: TextStyle(fontSize: 23),
              ),
            ),
            const SizedBox(height: 19),
            const Text('Made By Prem'),
          ],
        ),
      ),
    );
  }
}
