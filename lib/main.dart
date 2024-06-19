/// Test case 1
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const color = Color(0xff673fb4);
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                color: Colors.green,
                width: double.infinity,
                height: double.infinity,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  color: Colors.red,
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 2,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  color: color,
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/// Test case 2
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const color = Color(0xff673fb4);
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             color: Colors.green,
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                       color: color,
//                       width: MediaQuery.of(context).size.width / 3,
//                       height: MediaQuery.of(context).size.height / 3,
//                     ),
//                     Container(
//                       color: Colors.red,
//                       width: MediaQuery.of(context).size.width / 3,
//                       height: MediaQuery.of(context).size.height / 3,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       color: Colors.red,
//                       width: MediaQuery.of(context).size.width / 3,
//                       height: MediaQuery.of(context).size.height / 3,
//                     ),Container(
//                       color: Colors.red,
//                       width: MediaQuery.of(context).size.width / 3,
//                       height: MediaQuery.of(context).size.height / 3,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
