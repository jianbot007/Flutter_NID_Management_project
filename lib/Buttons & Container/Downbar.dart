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
            padding: EdgeInsets.only(right: 10),
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 70,
                width: 100,
                child: const Center(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Contact Us",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const Text(
                      "Call Center Number : 105",
                      style: TextStyle(fontSize: 8, color: Colors.white),
                    ),
                    const Text(
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
