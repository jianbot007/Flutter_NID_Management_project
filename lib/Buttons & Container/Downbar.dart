import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/setColor.dart';

class DownBar extends StatelessWidget {
  const DownBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 80,
            width: double.infinity,
            color: setColor.GreenColor,
            padding: const EdgeInsets.only(right: 10),
            alignment: Alignment.centerRight,
            child: SizedBox(
                height: 70,
                width: 100,
                child: Container(
                  alignment: Alignment.centerRight,
                    child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact Us",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Call Center Number : 105",
                      style: TextStyle(fontSize: 8, color: Colors.white),
                    ),
                    Text(
                      "Visit our Facebook Page",
                      style: TextStyle(
                          fontSize: 9,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                    ),
                  ],
                ))),
          );
}
}
