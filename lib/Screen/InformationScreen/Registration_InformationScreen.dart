import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/Downbar.dart';
import '../../setColor.dart';

class RegistrationInformationScreen extends StatelessWidget {
  RegistrationInformationScreen({super.key});

  final List<String> _infoText = [
    "১. জন্মনিবন্ধনে রেজিস্ট্রার করা নাম দেওয়া ",
    "২. জন্মনিবন্ধনের নং দেওয়া",
    "৩. জন্মনিবন্ধনে রেজিস্ট্রার করা জন্ম তারিখ দেওয়া ",
    "৪. জন্মনিবন্ধনে রেজিস্ট্রার করা লিঙ্গ দেওয়া",
    "৫. জন্মনিবন্ধনে রেজিস্ট্রার করা রক্তের গ্রুপ দেওয়া",
    "৬. মোবাইল নং ১১ সংখ্যার হতে হবে। উদাহরণঃ ০১৭**৬৫৬*৩",
    "৭. জন্মনিবন্ধনে রেজিস্ট্রার করা পিতার নাম ও nid নং দেওয়া ",
    "৮. জন্মনিবন্ধনে রেজিস্ট্রার করা মাতার নাম ও nid নং দেওয়া ",
    "৯. বৈবাহিক অবস্থা:  \n - বিবাহিত হলে married \n - অবিবাহিত হলে single \n - তালাক হলে divorce",
    "১০. বিবাহিত হলে স্বামী/স্ত্রীর NID রেজিস্ট্রার হতে নাম ও নং দেওয়া ",
    "১১. সঙ্গায় থাকলে জন্মনিবন্ধনে রেজিস্ট্রার করা নাম ও নং / NID রেজিস্ট্রার করা নাম ও নং দেওয়া ",
    "১২.বর্তমান জেলার নাম, সিটি কর্পোরেশন /থানা/উপজেলা, বাসা নম্বর, ভোটার এলাকা এবং নম্বর দেওয়া",
  ];

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
          Expanded(
            child: ListView.builder(
              itemCount: _infoText.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _infoText[index],
                    style: const TextStyle(fontSize: 15),
                  ),
                );
              },
            ),
          ),
          const DownBar(),

        ],
      ),
    );
  }
}
