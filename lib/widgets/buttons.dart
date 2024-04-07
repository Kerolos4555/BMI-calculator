import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String title;
  final int number;
  final VoidCallback minusButton;
  final VoidCallback plusButton;
  const Buttons({
    super.key,
    required this.title,
    required this.number,
    required this.minusButton,
    required this.plusButton,
  });

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
          Text(
            title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '$number',
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: minusButton,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 6,
                  ),
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      shape: BoxShape.rectangle,
                    ),
                    child: const Icon(
                      Icons.remove,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: plusButton,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 6,
                  ),
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      shape: BoxShape.rectangle,
                    ),
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
