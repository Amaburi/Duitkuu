import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    String? email = user?.email;
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text('The Current Session of the Email is : $email',style: TextStyle(
                color: Colors.amber,fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
