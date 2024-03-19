// import 'package:coffeeshop/LoginPage.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// class wrappage extends StatefulWidget {
//   const wrappage({super.key});

//   @override
//   State<wrappage> createState() => _wrappageState();
// }

// class _wrappageState extends State<wrappage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return loginpage();
//             } else {
//               return signup();
//             }
//           }),
//     );
//   }
// }
