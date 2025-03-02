import 'package:flutter/material.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/Downbar.dart';
import 'package:flutter_nid_management_project/Buttons%20&%20Container/TextFields.dart';
import 'package:flutter_nid_management_project/Screen/DataInputScreen.dart';
import 'package:flutter_nid_management_project/Screen/NotificationPage.dart';
import 'package:flutter_nid_management_project/setColor.dart';

class Data_Correction_Screen extends StatefulWidget {
  

  const Data_Correction_Screen({super.key});

  @override
  State<Data_Correction_Screen> createState() => _Data_Correction_ScreenState();
}

class _Data_Correction_ScreenState extends State<Data_Correction_Screen> {
  final TextEditingController _applicantname = TextEditingController();

  final TextEditingController _nidNumber = TextEditingController();

  final TextEditingController _password = TextEditingController();

  var NotificationText = "আপনার NID Card লক করা হয়েছে,আনলোক করতে কল সেন্টারে যোগাযোগ করুন অথবা স্থানীয় নির্বাচন অফিসের সহায়তা নিন.......";

  final TextEditingController _mobileNumber = TextEditingController();
  final TextEditingController _code = TextEditingController();

  @override
  Widget build(BuildContext context) {
// Future<void> showDialog() async {
//   await showDialog(
//     //context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: const Text("Dialog"),
//         content: Column(children: [
//          const Text("আপনার মোবাইলে একটি ছয় ডিজিটের OTP কোড পাঠানো হইয়েছে,সেটি নিচের বক্সে লিখুন",style : TextStyle(fontSize : 16)),
//          const Text("OTP ডিজিট কারও সাথে শেয়ার করবেন না", style : TextStyle(fontSize : 11,color : Colors.red)),
//          const SizedBox(height: 20,),
//          CustomTextField(hinttext: "OTP CODE", IS_Password: false, controller: _code ),
         
//         ],),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.push(context,MaterialPageRoute(builder: (context)=> const DataInputScreen()));
//             },
//             child: const Text("ঠিক আছে"),
//           ),
//         ],
//       );
//     },
//   );
//   }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body : Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget> [
                Container(
                alignment: Alignment.bottomLeft,
                  height: 150,
                  width: double.infinity,
                  color: setColor.GreenColor,
                  child :  TextButton(
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
                ),
                SizedBox(
                  height: 572,
                  width: double.infinity,
                   child: SingleChildScrollView(
                          child: Column(children: [
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
                      IS_Password: false,
                      controller: _applicantname,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: 'NID নং',
                      IS_Password: false,
                      controller: _nidNumber,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                     CustomTextField(
                      hinttext: 'পাসওয়ার্ড',
                      IS_Password: true,
                      controller: _password,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
            
                      CustomTextField(
                      hinttext: "মোবাইল নাম্বার",
                      IS_Password: false,
                      controller: _mobileNumber,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      onPressed: () {
                       // showDialog();
                       // Navigator.push(
                         // context, MaterialPageRoute(builder: (context )=>  )
                        //);
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
                      const SizedBox( height: 100, )
                             ])),               ),
                
                 const DownBar(),
        ] ),
    );
}
}
