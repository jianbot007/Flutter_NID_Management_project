import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final String  hinttext;
  final bool IS_Password;
  final TextEditingController controller ;

  const CustomTextField({super.key, required this.hinttext,required this.IS_Password, required this.controller });//required this.controller});

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width : 250,
      child: TextField(
        obscureText: IS_Password,
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
          
          filled: true,
          fillColor: Colors.grey[200], // Background color of the TextField
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0), // Circular border
            borderSide: const BorderSide(width: 1,color : Colors.black), // No border line
          ),
          contentPadding: const EdgeInsets.symmetric(
              vertical: 10.0, horizontal: 20.0), // Padding inside the TextField
        ),
      ),
    );
  }
}


class CustomTextField2 extends StatelessWidget {

  final String  hinttext;
  final bool IS_Password;
  final TextEditingController controller ;
  final Icon CustomIcons;

  CustomTextField2({super.key, required this.hinttext,this.IS_Password = false, required this.controller,this.CustomIcons = const Icon(Icons.abc) });

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width : 250,
      child: TextField(
        obscureText: IS_Password,
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
          prefix: CustomIcons,
          
          filled: true,
          fillColor: Colors.grey[200], // Background color of the TextField
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0), // Circular border
            borderSide: const BorderSide(width: 1,color : Colors.black), // No border line
          ),
          contentPadding: const EdgeInsets.symmetric(
              vertical: 10.0, horizontal: 20.0), // Padding inside the TextField
        ),
      ),
    );
  }
}