import 'package:flutter/material.dart';

class BloodGroup extends StatefulWidget {
  const BloodGroup({super.key});

  @override
  State<BloodGroup> createState() => _BloodState();
}

class _BloodState extends State<BloodGroup> {
  String bloodGroup = 'A+';

  final List<String> options = [
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
    "O+",
    "O-"
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMenu(
          context: context,
          position: RelativeRect.fromLTRB(100, 200, 400, 100),
          items: options.map((option) {
            return PopupMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
        ).then((newValue) {
          if (newValue != null) {
            setState(() {
              bloodGroup = newValue;
            });
          }
        });
      },
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: Text("Blood Group : $bloodGroup"),
      ),
    );
  }
}




 