// import 'package:flutter/material.dart';
// import 'package:vihaan_2022/widgets/prize_button.dart';
//
// class Prizes extends StatelessWidget {
//   const Prizes({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var _width = MediaQuery.of(context).size.width;
//     // var _height = MediaQuery.of(context).size.height;
//     double gap = 40;
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [PrizeButton(src: 'winning')],
//         ),
//         SizedBox(height: _width < 800 ? gap - 10 : gap),
//         Wrap(
//           spacing: 10,
//           runSpacing: 20,
//           children: [
//             PrizeButton(src: 'first_runner_up'),
//             PrizeButton(src: 'second_runner_up'),
//           ],
//         ),
//         SizedBox(height: _width < 800 ? gap - 10 : gap),
//         Wrap(
//           runSpacing: 10,
//           spacing: 20,
//           alignment: WrapAlignment.center,
//           children: [
//             PrizeButton(src: 'matic'),
//             PrizeButton(src: 'tezos'),
//             PrizeButton(src: 'portis'),
//             PrizeButton(src: 'speechly'),
//             PrizeButton(src: 'echoar'),
//           ],
//         ),
//         SizedBox(height: _width < 800 ? gap - 10 : gap),
//         Wrap(
//           runSpacing: 10,
//           spacing: 20,
//           alignment: WrapAlignment.center,
//           children: [
//             PrizeButton(src: 'women_team'),
//             PrizeButton(src: 'freshers_team'),
//             PrizeButton(src: 'ieee_team'),
//           ],
//         ),
//         SizedBox(height: _width < 800 ? gap - 10 : gap),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             PrizeButton(src: 'to_all'),
//           ],
//         )
//       ],
//     );
//   }
// }
