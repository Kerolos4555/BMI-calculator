import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bool isMale;
  final int result;
  final int age;
  const ResultScreen(
      {super.key,
      required this.isMale,
      required this.result,
      required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender: ${isMale ? 'Male' : 'Female'}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
            Text(
              'Age: $age',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
            Text(
              'BMI: $result',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
