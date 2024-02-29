import 'package:fast_part2/part2/ch8/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeWidget(),
    theme: customTheme
    ));
}

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