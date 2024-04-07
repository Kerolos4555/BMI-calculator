import 'dart:math';

import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widgets/buttons.dart';
import 'package:bmi_calculator/widgets/gender_container.dart';
import 'package:bmi_calculator/widgets/height_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  double height = 120;
  int age = 10;
  int weight = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: GenderContainer(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      text: "MALE",
                      icon: Icons.male,
                      color: isMale == true ? Colors.blue : Colors.grey[400],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GenderContainer(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      text: "FEMALE",
                      icon: Icons.female,
                      color: isMale == false ? Colors.blue : Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: HeightSlider(
                height: height,
                onChange: (value) {
                  height = value;
                  setState(() {});
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Buttons(
                      title: 'Age',
                      number: age,
                      minusButton: () {
                        age--;
                        setState(() {});
                      },
                      plusButton: () {
                        age++;
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Buttons(
                      title: 'Weight',
                      number: weight,
                      minusButton: () {
                        weight--;
                        setState(() {});
                      },
                      plusButton: () {
                        weight++;
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                Navigator.push(
                  (context),
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      result: result.round(),
                      isMale: isMale,
                      age: age,
                    ),
                  ),
                );
              },
              child: const Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
