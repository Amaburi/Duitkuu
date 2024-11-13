import 'package:duitkuproto/pages/Landing.dart';

import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:flutter/material.dart';
import '../pages/Home.dart';
class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        print('Auth state changed: ${snapshot.connectionState}, hasData: ${snapshot.hasData}');
        if (!snapshot.hasData) {
          return const LandingPage();
        }
        return const Home();
      },
    );
  }
}
