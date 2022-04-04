import 'package:firebase_auth/firebase_auth.dart';
import 'package:queros/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120.0,
              width: 12.0,
            ),
            Container(
              child: Text(
                "Welcome User",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
              ),
            ),

            SizedBox(
              height: 28.0,
              width: 12.0,
            ),
            Container(
              child: ElevatedButton(
                child: Text("Logout"),
                onPressed: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    print("Signed Out");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInScreen()));
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
