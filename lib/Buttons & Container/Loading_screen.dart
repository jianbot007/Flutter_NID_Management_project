import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/Screen/SignupScreen.dart';

class LoadingScreen extends StatefulWidget {

   final Widget nextScreen ;
  const LoadingScreen({super.key, required this.nextScreen});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

 

   void initState() {
    super.initState();

    // Delay for 1 second and then navigate to the signup screen
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => widget.nextScreen),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: CircularProgressIndicator()));
  }
}
