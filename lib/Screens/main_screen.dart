import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String displayText = "Press the button to change me!";
  final List<String> randomOptions = [
    "Press the button to change me!",
    "A surprise gift is headed your way.",
    "Your persistence will inspire others.",
    "A simple decision will lead to great happiness.",
    "Good news is coming—prepare for a happy surprise!"
  ];
  void changeFortune() {
    for (int i = 0; i < randomOptions.length; i++) {
      if (displayText == randomOptions[i]) {
        setState(() {
          displayText = randomOptions[(i + 1) % randomOptions.length];
        });
        break;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade800,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text('FORTUNE COOKIE',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 3,
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(height: 130,),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:  Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    displayText,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: changeFortune,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  padding: const EdgeInsets.all(15),
                ),
                child: Image.asset(
                  'assets/images/fortune-cookie.png',
                   height: 140,
                   width: 140,
                ),
              ),
              const Spacer(),
              const Text("© Zubaer Haider - 2024",
              style: TextStyle(
                color: Colors.white
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
