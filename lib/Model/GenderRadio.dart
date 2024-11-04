import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_nid_management_project/Screen/SignupScreen.dart';

class GenderrSelection extends StatefulWidget {
  GenderrSelection({super.key});

  @override
  State<GenderrSelection> createState() => _GenderrSelectionState();
}

class _GenderrSelectionState extends State<GenderrSelection> {
  String Gender = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
        border : Border.all(color: Colors.black,width: 1)

      ),
      width: 250,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(
        children: [
          SizedBox(width: 20),
          const Text("লিঙ্গ :",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Radio(
            value: "Male",
            onChanged: (value) {
              setState(() {
                Gender = value.toString();
              });
            },
            groupValue: Gender,
          ),
          Text("পুরুষ"),
          Radio(
            value: "Female",
            onChanged: (value) {
              setState(() {
                Gender = value.toString();

              });
            },
            groupValue: Gender,
          ),
          Text("মহিলা"),
          Radio(
            value: "Other",
            onChanged: (value) {
              setState(() {
                Gender = value.toString();
              });
            },
            groupValue: Gender,
          ),
          Text("অন্যান্য"),
        ],
      )),
    );

  }


}
