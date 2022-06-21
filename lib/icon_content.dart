import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  const IconContent({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 18.0,
            color: Color(0XFF8D8E98),
          ),
        ),
      ],
    );
  }
}
