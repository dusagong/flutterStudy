import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeWidget(),
    theme: customTheme
    ));
}
final customTheme = ThemeData(
  colorScheme: ColorScheme.light(
        primary: Colors.indigo,
        secondary: Colors.green,
        tertiary: Colors.yellow
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.red
      )
);

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Placeholder(),
      ),
    );
  }
}