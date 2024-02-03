// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: HomeWidget()));
// }

// class HomeWidget extends StatelessWidget {
//   const HomeWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//       child: Scaffold(
//         body: ConstraintsWidget(),
//       ),
//     );
//   }
// }

// class ConstraintsWidget extends StatelessWidget {
//   const ConstraintsWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 500,
//       width: double.infinity,
//       color: Colors.blue,
//       child: Center(
//           child: Container(
//         // constraints: BoxConstraints.tight(Size(200, 200)),
//         constraints: BoxConstraints.loose(Size(200, 200)),
//         color: Colors.red,
//         height: 300,
//         width: 300,
//       )),
//     );
//   }
// }
