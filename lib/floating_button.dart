import 'package:flutter/material.dart';

class WeightfloatingButton extends StatelessWidget {
  WeightfloatingButton({required this.icon, required this.onPressed});
  final IconData icon;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: 50.0,
      child: FittedBox(
        child: FloatingActionButton(
          child: Icon(
            icon,
            color: Colors.white,
          ),
          onPressed: onPressed,
          shape: CircleBorder(),
          backgroundColor: Color(0xFF4C4F5E),
        ),
      ),
    );
  }
}
