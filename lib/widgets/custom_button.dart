import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final int pointNumber;
  const CustomButton({Key? key, required this.onPressed, required this.pointNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        backgroundColor: Colors.orange,
        minimumSize: const Size(150, 50),
      ),
      onPressed: onPressed,
      child: Text(
        'Add $pointNumber Point ',
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}
