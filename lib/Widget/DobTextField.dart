import 'package:flutter/material.dart';

class DateField extends StatefulWidget {

  Function(DateTime) onDateSelected;
  DateField({super.key, required this.onDateSelected});

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  final TextEditingController _dob = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        onTap: () {
          _selectDate();
        },
        controller: _dob,
        readOnly: true,
        decoration: InputDecoration(
          hintText: "  জন্ম তারিখ",
          prefix: const Icon(Icons.calendar_month),
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
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        );

        if(picked != null){
          setState((){
             widget.onDateSelected(picked);
            _dob.text = picked.toString().split(" ")[0];
          }
          );
        }
  }
}


