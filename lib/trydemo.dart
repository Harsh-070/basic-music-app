// import 'dart:ui' as ui;
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(home: TestPainterWidget(), debugShowCheckedModeBanner: false));
// }

// class TestPainterWidget extends StatelessWidget {
//   const TestPainterWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         // padding: EdgeInsets.all(20),
//         color: const ui.Color.fromARGB(41, 255, 193, 7),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             //
//             CustomPaint(size: Size(330, 100), painter: PlayerPainter()),
//             //
//             CustomPaint(
//               size: Size(MediaQuery.of(context).size.width * 0.9, MediaQuery.of(context).size.height * 0.12),
//               // painter: ResponsivePlayerPainter(),
//               child: Container(
//                 height: MediaQuery.of(context).size.height * 0.12,
//                 width: MediaQuery.of(context).size.width * 0.9,
//                 padding: const EdgeInsets.symmetric(horizontal: 16), // Optional padding
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end, //
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           "Let me lov...",
//                           style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           "DJ Snake",
//                           style: TextStyle(
//                             color: ui.Color.fromARGB(255, 207, 203, 203),
//                             fontSize: 17,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(width: 15),
//                     const Icon(Icons.favorite_border, color: Colors.white, size: 30),
//                     const SizedBox(width: 5),
//                     const Icon(Icons.pause, color: Colors.white, size: 30),
//                     const SizedBox(width: 5),
//                     const Icon(Icons.play_arrow, color: Colors.white, size: 30),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

