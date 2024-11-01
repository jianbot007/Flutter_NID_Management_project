import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String  hinttext;
  final bool IS_Password;
  final TextEditingController controller ;

  const CustomTextField({super.key, required this.hinttext,required this.IS_Password, required this.controller });//required this.controller});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width : 250,
      child: TextField(
        obscureText: IS_Password,
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
          
          filled: true,
          fillColor: Colors.grey[200], // Background color of the TextField
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0), // Circular border
            borderSide: BorderSide(width: 1,color : Colors.black), // No border line
          ),
          contentPadding: EdgeInsets.symmetric(
              vertical: 10.0, horizontal: 20.0), // Padding inside the TextField
        ),
      ),
    );
  }
}
