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
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                  ),
                ),
                const SizedBox(width: 51),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text(
                      'Jack',
                      style: TextStyle(fontSize: 31),
                    ),
                    Text(
                      'Description',
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                )
              ],
            ),
           const SizedBox(height: 51),
            Padding(
              padding: const EdgeInsets.only(left: 31),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.school_outlined,size: 41),
                      SizedBox(width: 21),
                      Text('School Name', style: TextStyle(fontSize: 21)),
                    ],
                  ),
                  Row(
                    children:const [
                      Icon(Icons.computer_outlined,size: 41),
                      SizedBox(width: 21),
                      Text('School Name', style: TextStyle(fontSize: 21)),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.location_on_outlined,size: 41),
                      SizedBox(width: 21),
                      Text('School Name', style: TextStyle(fontSize: 21)),
                    ],
                  ),
                  Row(
                    children: const[
                      Icon(Icons.email_outlined,size: 41),
                      SizedBox(width: 21),
                      Text('School Name', style: TextStyle(fontSize: 21)),
                    ],
                  ),
                  Row(
                    children: const[
                      Icon(Icons.phone_android_outlined,size: 41),
                      SizedBox(width: 21),
                      Text('School Name', style: TextStyle(fontSize: 21)),
                    ],
                  ),
                ],
              ),
            ),
           const Text('About Me'),
           const Text('Made By Prem'),
          ],
        ),
      ),
    );
  }
}
