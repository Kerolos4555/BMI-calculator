import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  final Function(double) onChange;
  final double height;
  const HeightSlider({super.key, required this.onChange, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${height.round()}',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'cm',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Slider(
            value: height,
            max: 220.0,
            min: 80.0,
            onChanged: onChange,
          ),
        ],
      ),
    );
  }
}
