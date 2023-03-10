import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.title,
      this.color = const Color(0xffa5a5a5),
      required this.onPress})
      : super(key: key);

  final String title;
  final Color color;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            height: 74,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(0),
                shape: BoxShape.circle,
                color: color),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
