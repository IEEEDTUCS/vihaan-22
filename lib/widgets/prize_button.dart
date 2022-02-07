// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:vihaan_2022/data/prizes_data.dart';
//
// import 'prize_dialog.dart';
//
// class PrizeButton extends StatelessWidget {
//   final String src;
//   const PrizeButton({Key? key, required this.src}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     var _width = MediaQuery.of(context).size.width,
//         _height = MediaQuery.of(context).size.height;
//     return SizedBox(
//       width: max(300, _width * 0.175),
//       height: max(100, _height * 0.125),
//       child: ElevatedButton(
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Image.network(
//                   cardImages[src].toString(),
//                   // width: min(200, _width * 0.1),
//                   fit: BoxFit.cover,
//                 ),
//                 Text(
//                   cardText[src].toString(),
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           style: ElevatedButton.styleFrom(
//             primary: const Color.fromARGB(255, 222, 240, 244),
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//             padding: const EdgeInsets.all(10),
//           ),
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (context) {
//                 return Dialog(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   elevation: 16,
//                   child: Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: const Color.fromARGB(255, 255, 255, 240)),
//                     padding: const EdgeInsets.all(10),
//                     child:
//                         PrizeDialog(src: src, height: _height, width: _width),
//                   ),
//                 );
//               },
//             );
//           }),
//     );
//   }
// }
