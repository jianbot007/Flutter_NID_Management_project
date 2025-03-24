
import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/Loading_screen.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/TextFields.dart';
import 'package:flutter_nid_management_project/Model/Finger_Authentication.dart';
import 'package:flutter_nid_management_project/Screen/NotificationPage.dart';
import 'package:flutter_nid_management_project/Widget/BloodGroup.dart';
import 'package:flutter_nid_management_project/Widget/DobTextField.dart';
import 'package:flutter_nid_management_project/Widget/GenderRadio.dart';
import 'package:flutter_nid_management_project/api/registerAPI.dart';
import 'package:flutter_nid_management_project/setColor.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  

  final TextEditingController _birthCertificateNo = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _mobileNo = TextEditingController();
  final TextEditingController _fatherName = TextEditingController();
  final TextEditingController _motherName = TextEditingController();
  final TextEditingController _fatherNIDno = TextEditingController();
  final TextEditingController _motherNIDno = TextEditingController();
  final TextEditingController _maritialStatus = TextEditingController();
  final TextEditingController _district = TextEditingController();
  final TextEditingController _division = TextEditingController();
  final TextEditingController _thana = TextEditingController();
  final TextEditingController _subDistrict = TextEditingController();
  final TextEditingController _villagename = TextEditingController();
  final TextEditingController _voterIDno = TextEditingController();
  final TextEditingController _partnerName = TextEditingController();
  final TextEditingController _partnerNidno = TextEditingController();

  late String _gender;
  DateTime? _pickedDon;
  late String _Dob;
  late String _BloodGroup;

  var NotificationText =
      "আপনার তথ্য নিবন্ধন সফল হয়েছে, আগামী ৭২ ঘন্টার ভিতর আপনার মোবাইল নাম্বারে NID নাম্বার এবং পাসওয়ার্ড পাঠিয়ে দেওয়া হবে, পাসওয়ার্ড এবং NID নাম্বার দিয়ে লগিন করে পাসওয়ার্ড পরিবর্তন করুন........";

  void _resetScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SignUpScreen()),
    );
  }

  void _onBloodGroupSelected(String BloodGroup) {
    setState(() {
      _BloodGroup = BloodGroup;
    });
  }

  void _onGenderSelection(String gender) {
    setState(() {
      _gender = gender;
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
        child: Column(children: <Widget>[
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
              const SizedBox(width: 140),
              TextButton(
                onPressed: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: setColor.RedColor,
                      shape: BoxShape.rectangle,
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text("নিবন্ধন সম্পর্কে জানতে Click এখানে করুন",
                      style: TextStyle(fontSize: 10, color: Colors.white)),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () async {
                        //FaceScanAuthentication faceScan = FaceScanAuthentication();
                      //  await faceScan.initializeCamera();
                       // await faceScan.captureImage();
                      //  faceScan.dispose();
            },
            child: Container(
                alignment: Alignment.center,
                height: 110,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 1)),
                child: const Text("Face Scan")),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () async {
                  Finger_Authentication faceAuth = Finger_Authentication();             
                  await faceAuth.authenticateUser();
            },
            child: Container(
                alignment: Alignment.center,
                height: 110,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 1)),
                child: const Text("Finger Print")),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            hinttext: 'আবেদনকারীর নাম',
            IS_Password: false,
            controller: _username,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            hinttext: "জন্ম নিবন্ধন নং",
            IS_Password: false,
            controller: _birthCertificateNo,
          ),
          const SizedBox(
            height: 30,
          ),
          DateField(onDateSelected: _onDateSelected),
          const SizedBox(
            height: 30,
          ),
          GenderSelection(
            Onselected: _onGenderSelection,
          ),
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
            hinttext: "পিতার NID নং",
            IS_Password: false,
            controller: _fatherNIDno,
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
            hinttext: "মাতার NID নং",
            IS_Password: false,
            controller: _motherNIDno,
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
          CustomTextField(
            hinttext: "স্বামী / স্ত্রীর NID নং",
            IS_Password: false,
            controller: _partnerNidno,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            hinttext: "বিভাগ",
            IS_Password: false,
            controller: _division,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            hinttext: "জেলা",
            IS_Password: false,
            controller: _district,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            hinttext: "উপজেলা",
            IS_Password: false,
            controller: _subDistrict,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            hinttext: "থানা",
            IS_Password: false,
            controller: _thana,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            hinttext: "গ্রাম",
            IS_Password: false,
            controller: _villagename,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            hinttext: "ভোটার আইডি নং",
            IS_Password: false,
            controller: _voterIDno,
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
               _signupData(context);
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
              child: const Text("তথ্য নিবন্ধন \n জমা",
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ),
          ),
        ]),
      ),
    );
  }
  
  _clearController(){
       _birthCertificateNo.clear();
      _username.clear();
      _mobileNo.clear();
      _fatherName.clear();
      _motherName.clear();
      _fatherNIDno.clear();
      _motherNIDno.clear();
      _maritialStatus.clear();
      _district.clear();
      _division.clear();
      _thana.clear();
      _subDistrict.clear();
      _villagename.clear();
      _voterIDno.clear();
      _partnerName.clear();
      _partnerNidno.clear();

      // Reset gender, DOB, and blood group as well
      _gender = "";
      _BloodGroup = "";
      _Dob = "";
  }


  Future<void> _signupData(BuildContext context) async {
   RegisterAPI registration = RegisterAPI();
  Map<String, dynamic> data = {
    "birth_certificate_no": _birthCertificateNo.text,
    "username": _username.text,
    "mobile_no": _mobileNo.text,
    "father_name": _fatherName.text,
    "mother_name": _motherName.text,
    "father_nid_no": _fatherNIDno.text,
    "mother_nid_no": _motherNIDno.text,
    "marital_status": _maritialStatus.text,
    "district": _district.text,
    "division": _division.text,
    "thana": _thana.text,
    "sub_district": _subDistrict.text,
    "village_name": _villagename.text,
    "voter_id_no": _voterIDno.text,
    "partner_name": _partnerName.text,
    "partner_nid_no": _partnerNidno.text,
    "gender": _gender,
    "dob": _pickedDon?.toString() ?? "",
    "blood_group": _BloodGroup
  };

  var response = await registration.signupUser(data);

 if (response['success']) {
    print("Success: ${response['message']}");
    _clearController();
       if (mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoadingScreen(
              nextScreen: NotificationScreen(NotificationText: NotificationText),
            ),
          ),
        );
      }
  } else {
    print("Error: ${response['message']}");
     Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoadingScreen(
              nextScreen: NotificationScreen(NotificationText: "Registration Failed ,Try Again"),
            ),
          ),
        );
  }

}
}

