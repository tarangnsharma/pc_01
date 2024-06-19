/// Test case 1
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             padding: const EdgeInsets.all(8.0),
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.blue),
//             ),
//             child: const Text('My Awesome Border'),
//           ),
//         ),
//       ),
//     );
//   }
// }

/// Test case 2

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: CustomBorderText(text: 'My Awesome Border'),
//         ),
//       ),
//     );
//   }
// }

// class CustomBorderText extends StatelessWidget {
//   final String text;

//   const CustomBorderText({super.key, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(8.0),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.blue),
//       ),
//       child: Text(text),
//     );
//   }
// }

/// Test case 3

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('My Awesome Border'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
