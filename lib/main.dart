import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
      ),
      // theme: ThemeData(
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Color(0xFF0a0e21),
      //     elevation: 5.0,
      //     shadowColor: Colors.black87,
      //   ),
      //   primaryColor: const Color(0xFF0A0E21),
      //   colorScheme: ColorScheme.fromSwatch().copyWith(
      //     secondary: const Color(0xFF101427),
      //   ),
      //   scaffoldBackgroundColor: const Color(0xFF0A0E21),
      //   textTheme: const TextTheme(
      //     bodyText2: TextStyle(color: Colors.white),
      //   ),
      // ),
      home: const InputPage(),
    );
  }
}
