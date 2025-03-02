import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/Downbar.dart';
import 'package:flutter_nid_management_project/Screen/InformationScreen/Registration_InformationScreen.dart';
import 'package:flutter_nid_management_project/Screen/NotificationPage.dart';
import 'package:flutter_nid_management_project/setColor.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          height: 150,
          width: double.infinity,
          color: setColor.GreenColor,
          child: TextButton(
            onPressed: () {
              Navigator.pop(context, "Back");
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                color: setColor.RedColor,
                shape: BoxShape.rectangle,
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "পূর্ববর্তী",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(
          height : 140
        ),
        Expanded(
          child: Column(children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> RegistrationInformationScreen()));
              },
              child: Container(
                height: 50,
                width: 300,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "রেজিস্ট্রেশন সম্পর্কিত তথ্য",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
             const SizedBox(
          height : 50
        ),
             GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> const NotificationScreen(NotificationText: "FaceScan এবং FingerPrint এর মিল থাকলে এবং নতুন তথ্য এর প্রমান থাকলে যেকোন তথ্য সংশোধন করা যাবে")));
              },
              child: Container(
                height: 50,
                width: 300,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "তথ্য সংশোধন সম্পর্কিত তথ্য",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
             const SizedBox(
          height : 50
        ),
             GestureDetector(
              onTap: () {

                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const NotificationScreen(NotificationText: "NID হারিয়ে গেলে দ্রুত GD করতে হবে এবং এর কপি আমাদের জমা দিতে হবে ,ফলে আপনার NID দ্বারা কোন অপরাধমুলক কাজ করতে পারবে না এবং আপনাকে একই নাম্বারে নতুন NID Card দেওয়া হবে")));
              },
              child: Container(
                height: 50,
                width: 300,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "হারানো NID ফিরে পেতে করনীয়",
                  style: TextStyle(fontSize:20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
        ),
        const DownBar(),
      ],
    ));
  }
}
