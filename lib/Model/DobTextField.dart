import 'package:flutter/material.dart';

class DateField extends StatefulWidget {
  DateField({super.key});

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  TextEditingController _dob = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: TextField(
        onTap: () {
          _selectDate();
        },
        controller: _dob,
        readOnly: true,
        decoration: InputDecoration(
          hintText: "  জন্ম তারিখ",
          prefix: Icon(Icons.calendar_month),
          filled: true,
          fillColor: Colors.grey[200], // Background color of the TextField
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0), // Circular border
            borderSide: const BorderSide(
                width: 1, color: Colors.black), // No border line
          ),
          contentPadding: const EdgeInsets.symmetric(
              vertical: 8.0, horizontal: 20.0), // Padding inside the TextField
        ),
      ),
    );
  
  }

   Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        );

        if(_picked != null){
          setState((){
            _dob.text = _picked.toString().split(" ")[0];
          }
          );
        }
  }
}


