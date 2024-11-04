import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/TextFields.dart';
import 'package:flutter_nid_management_project/Model/DobTextField.dart';
import 'package:flutter_nid_management_project/Model/GenderRadio.dart';
import 'package:flutter_nid_management_project/setColor.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController _birthCertificateNo = TextEditingController();
  final TextEditingController _username = TextEditingController();
  String _gender = '' ;


SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SingleChildScrollView( 
        child :
            Column(
                children : <Widget> [ 
                  
                  
                Container(
                  alignment: Alignment.bottomLeft,
                    height: 150,
                    width: double.infinity,
                    color: setColor.GreenColor,
                    child : Row(

                      children : [TextButton(
                          onPressed: () {
                            Navigator.pop(context,"Back");
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
                            child : const Text("পূর্ববর্তী",style : TextStyle(fontSize : 15,color : Colors.white)),
                          ),
                        ),
                        SizedBox(width : 140),
                        TextButton(
                          onPressed: () {
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
                            child : const Text("নিবন্ধন সম্পর্কে জানতে Click এখানে করুন",style : TextStyle(fontSize : 10,color : Colors.white)),
                          ),
                        ),
                 ] ),
                  ),
                  SizedBox(height: 30,),
                   GestureDetector(
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
                      IS_Password: true,
                      controller: _username,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      hinttext: "জন্ম নিবন্ধন নং",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    DateField(),
                     const SizedBox(
                      height: 30,
                    ),
                   GenderrSelection(),
                     const SizedBox(
                      height: 30,
                    ),
                  CustomTextField(
                      hinttext: "রক্তের গ্রুপ",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),
                      const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "মোবাইল নং",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),
                     const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "পিতার নাম",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),
                     const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "পিতার NID নং",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),
                     const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "মাতার নাম",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),
                     const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "মাতার NID নং",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),

 const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "বৈবাহিক অবস্থা",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),

 const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "স্বামী / স্ত্রীর নাম",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),

 const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "স্বামী / স্ত্রীর NID নং",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),

 const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "জেলা",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),

 const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "উপজেলা",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),
 const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "থানা",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),
 const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "গ্রাম",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),
 const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: "ভোটার আইডি নং",
                      IS_Password: true,
                      controller: _birthCertificateNo,
                    ),
 const SizedBox(
                      height: 30,
                    ),
             ] ),
    
      )
    );
  }
}