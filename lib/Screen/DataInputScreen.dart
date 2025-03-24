import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/TextFields.dart';
import 'package:flutter_nid_management_project/Screen/NotificationPage.dart';
import 'package:flutter_nid_management_project/Widget/BloodGroup.dart';
import 'package:flutter_nid_management_project/Widget/DobTextField.dart';
import 'package:flutter_nid_management_project/setColor.dart';

class DataInputScreen extends StatefulWidget {
  const DataInputScreen({super.key});

  @override
  State<DataInputScreen> createState() => _DataInputScreenState();
}

class _DataInputScreenState extends State<DataInputScreen> {
  final TextEditingController _username = TextEditingController();

  final TextEditingController _mobileNo = TextEditingController();

  final TextEditingController _fatherName = TextEditingController();

  final TextEditingController _motherName = TextEditingController();

  final TextEditingController _maritialStatus = TextEditingController();

  final TextEditingController _partnerName = TextEditingController();

  DateTime? _pickedDon;

  late String _Dob;

  late String _BloodGroup;

  var NotificationText =
      "আপনার তথ্য সংশোধন সফল হয়েছে,নতুন তথ্য গুলোর সঠিকতার প্রমান আপনার কাছে রাখুন এবং আগামী ৭২ ঘন্টার ভিতর আপনার মোবাইল নাম্বারে মেসেজে পরবর্তী কার্যক্রম বিবরনী পাঠিয়ে দেওয়া হবে।........";

  void _onBloodGroupSelected(String BloodGroup) {
    setState(() {
      _BloodGroup = BloodGroup;
    });
  }

  void _onDateSelected(DateTime date) {
    setState(() {
      _pickedDon = date;
      _Dob = _pickedDon.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
            alignment: Alignment.bottomLeft,
            height: 150,
            width: double.infinity,
            color: setColor.GreenColor,
            child: Row(children: [
              TextButton(
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
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text("পূর্ববর্তী",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
              ),
            ],
            ),
        ),
        const Text("তথ্য সংশোধন ফর্ম", style: TextStyle(fontSize: 16)),
        const Text(
            "আপনি এখন আপনার তথ্য সংশোধন করতে পারবেন,সম্পুর্ন ফর্মটি সাবধানে ফিল-আপ করুন,ফিল-আপ করা তথ্যগুলোই হবে আপনার বর্তমান তথ্য",
            style: TextStyle(fontSize: 15, color: Colors.red)),
        const SizedBox(height: 30),
        CustomTextField(
          hinttext: 'আবেদনকারীর নাম',
          IS_Password: false,
          controller: _username,
        ),
        const SizedBox(
          height: 30,
        ),
        DateField(onDateSelected: _onDateSelected),
        const SizedBox(
          height: 30,
        ),
        BloodGroup(
          onSelected: _onBloodGroupSelected,
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextField(
          hinttext: "মোবাইল নং",
          IS_Password: false,
          controller: _mobileNo,
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextField(
          hinttext: "পিতার নাম",
          IS_Password: false,
          controller: _fatherName,
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextField(
          hinttext: "মাতার নাম",
          IS_Password: false,
          controller: _motherName,
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextField(
          hinttext: "বৈবাহিক অবস্থা",
          IS_Password: false,
          controller: _maritialStatus,
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextField(
          hinttext: "স্বামী / স্ত্রীর নাম",
          IS_Password: false,
          controller: _partnerName,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
                      onPressed: () {
  
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context )=> NotificationScreen(NotificationText: NotificationText))
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        decoration : BoxDecoration(
                          color: setColor.RedColor,
                          shape : BoxShape.rectangle,
                          border : Border.all(width: 1,color: Colors.black),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child : const Text("জমা দিন",style : TextStyle(fontSize : 15,color : Colors.white)),
                      ),
                    ),
                      const SizedBox( height: 30, ),

                             ])),               
    );
  }
}
