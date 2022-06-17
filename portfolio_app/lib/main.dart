import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // It will disable the landscape mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    const MaterialApp(
      home: HomeScreen(),

      //This will remove the debug banner
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
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
                        'Prem Kumar Rai',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'assets/fonts/Roboto-Regular.ttf'),
                      ),
                      Text(
                        'Flutter App Developer',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
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
                        Icon(Icons.school_outlined,
                            size: 38, color: Colors.white),
                        SizedBox(width: 18),
                        Text(
                          'University of Wolverhampton',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: const [
                        Icon(Icons.computer_outlined,
                            size: 38, color: Colors.white),
                        SizedBox(width: 26),
                        Text(
                          'Computer Science',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: const [
                        Icon(Icons.location_on_outlined,
                            size: 38, color: Colors.white),
                        SizedBox(width: 18),
                        Text(
                          'Nepal',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: const [
                        Icon(Icons.email_outlined,
                            size: 38, color: Colors.white),
                        SizedBox(width: 18),
                        Text(
                          'abc@gmail.com',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: const [
                        Icon(Icons.phone_android_outlined,
                            size: 38, color: Colors.white),
                        SizedBox(width: 18),
                        Text(
                          '+9771234567891',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 51),
              const Padding(
                padding: EdgeInsets.all(19.0),
                child: Text(
                  'Hello my name is Prem and this is my portfolio app. I have done my undergraduate in Computer Science and planning to do Msc in Digital Marketing.',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
              ),
              const SizedBox(height: 60),
              AnimatedTextKit(animatedTexts: [
                FadeAnimatedText('Made with ❤️ by Prem',
                    textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
